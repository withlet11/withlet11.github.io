#lang racket

(require gregor)

(provide get-delimiter
	 get-en-ver-link
	 get-ja-ver-link
	 get-last-update-string
	 get-local-date-time-string
	 get-local-text
	 make-body-element
	 make-filename
	 make-footer-element
	 make-head-element
	 make-nav-element
	 make-page)

(define (make-filename lang content-data)
  (let ([filename (second (assv 'filename content-data))])
    (if (eqv? lang 'en)
	(string-append filename ".html")
	(string-append filename "-" (symbol->string lang) ".html"))))

(define (make-page lang content-data generator)
  (let ([page-title (second (assv 'page-title content-data))]
	[article-element (generator lang content-data)])
    (string-append
     "<!DOCTYPE html>\n"
     "<html lang=\"" (symbol->string lang) "\">\n"
     (make-head-element lang page-title)
     (make-body-element lang content-data article-element)
     "</html>")))

(define (make-head-element lang page-title)
  (string-append
   "  <head>\n"
   "    <link rel=\"icon\" type=\"image/x-icon\" href=\"favicon.ico\">\n"
   "    <link rel=\"stylesheet\" type=\"text/css\" href=\"base"
   (if (eqv? lang 'en) "" (string-append "-" (symbol->string lang)))
   ".css\">\n"
   "    <title>" page-title "</title>\n"
   "  </head>\n"))

(define (make-body-element lang content-data article-element)
  (let ([page-title (second (assv 'page-title content-data))])
    (string-append
     "  <body>\n"
     (make-nav-element lang content-data)
     article-element
     (make-footer-element content-data)
     "  </body>\n")))

(define (make-nav-element lang content-data)
  (let ([logo-path (second (assv 'logo-path content-data))])
    (string-append
     "    <nav>\n"
     "      <h1><a href=\""
     (cond [(eqv? lang 'en) "index.html"]
	   [(eqv? lang 'ja) "index-ja.html"]
	   [else "index.html"])
     "\"><img src=\"" logo-path "\" width=\"240\" alt=\"Withlet11\"></a></h1>\n"
     "      <p>" (get-en-ver-link lang content-data) " | " (get-ja-ver-link lang content-data) "</p>\n"
     "    </nav>\n")))

(define (make-footer-element content-data)
  (let ([author-name (second (assv 'author-name content-data))]
	[author-email (second (assv 'author-email content-data))])
    (string-append
     "    <footer>\n"
     "      <p>Copyright 2020 " author-name " &lt;<a href=\"mailto:" author-email "\">" author-email "</a>&gt;</p>\n"
     "    </footer>\n")))

(define (get-local-text lang content-list)
  (cond [(assv lang content-list) => cdr]
	[else (cdar content-list)]))

(define (get-en-ver-link lang content-data)
  (let ([filename (make-filename 'en content-data)])
    (if (eqv? lang 'en)
	"<span class=\"selected\">EN</span>"
	(string-append "<a href=\"" filename "\">EN</a>"))))

(define (get-ja-ver-link lang content-data)
  (let ([filename (make-filename 'ja content-data)])
    (if (eqv? lang 'ja)
	"<span class=\"selected\">JP</span>"
	(string-append "<a href=\"" filename "\">JP</a>"))))

(define (get-delimiter lang)
  (let ([delimiters '((en ": ") (ja "："))])
    (cond [(assv lang delimiters) => second]
	  [else (cadar delimiters)])))

(define (get-local-date-time-string lang date-time)
  (cond [(eqv? lang 'ja) (string-append (~t date-time "y年M月d日 h時mm分") " (CET)")]
	[else (string-append (~t date-time "d MMM y h:mm") " (CET)")]))

(define (get-last-update-string lang date-time)
  (cond [(eqv? lang 'ja) (string-append "最終更新：" (~t date-time "y年M月d日"))]
	[else (string-append "Last update on " (~t date-time "d MMM y"))]))

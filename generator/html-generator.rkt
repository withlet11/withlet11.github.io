#lang racket

;;; html-generator.rkt -- generate contents for web pages
;;
;; The MIT License (MIT)
;;
;; Copyright (c) 2021 Yasuhiro Yamakawa <withlet11@gmail.com>
;; 
;; Permission is hereby granted, free of charge, to any person obtaining a
;; copy of this software and associated documentation files (the "Software"),
;; to deal in the Software without restriction, including without limitation
;; the rights to use, copy, modify, merge, publish, distribute, sublicense,
;; and/or sell copies of the Software, and to permit persons to whom the
;; Software is furnished to do so, subject to the following conditions:
;; 
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;; 
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
;; THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;; DEALINGS IN THE SOFTWARE.

(require gregor
         "generator-common.rkt")

(provide make-app-page
         make-index-page)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Common parts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (make-head-element lang page-title)
  (string-append
   "  <head>\n"
   "    <link rel='icon' type='image/x-icon' href='favicon.ico'>\n"
   (format
    "    <link rel='stylesheet' type='text/css' href='base~a.css'>\n"
    (if (eqv? lang 'en) "" (format "-~a" lang)))
   (format "    <title>~a</title>\n" page-title)
   "  </head>\n"))

(define (make-body-element lang content-data article-element)
  (let ([page-title (second (assv 'page-title content-data))])
    (string-append
     "  <body>\n"
     (make-header-element lang content-data)
     article-element
     (make-footer-element content-data)
     "  </body>\n")))

(define (make-header-element lang content-data)
  (let ([logo-path (second (assv 'logo-path content-data))])
    (string-append
     "    <header>\n"
     (format "      <h1><a href='~a'><img src='~a' width='240' alt='Withlet11'></a></h1>\n"
             (cond [(eqv? lang 'en) "index.html"]
                   [(eqv? lang 'ja) "index-ja.html"]
                   [else "index.html"])
             logo-path)
     (format "      <p>~a | ~a</p>\n"
             (get-en-ver-link lang content-data)
             (get-ja-ver-link lang content-data))
     "    </header>\n")))

(define (make-footer-element content-data)
  (let ([author-name (second (assv 'author-name content-data))]
	[author-email (second (assv 'author-email content-data))])
    (string-append
     "    <footer>\n"
     (format "      <p>Copyright 2020-2021 ~a &lt;<a href='mailto:~a'>~a</a>&gt;</p>\n"
             author-name
             author-email
             author-email)
     "    </footer>\n")))

(define (get-en-ver-link lang content-data)
  (let ([filename (make-filename 'en content-data)])
    (if (eqv? lang 'en)
	"<span class='selected'>EN</span>"
	(format "<a href='~a'>EN</a>" filename))))

(define (get-ja-ver-link lang content-data)
  (let ([filename (make-filename 'ja content-data)])
    (if (eqv? lang 'ja)
	"<span class='selected'>JP</span>"
	(format "<a href='~a'>JP</a>" filename))))

(define (get-first-local-text lang content-list)
  (string-replace
   (first (get-local-text lang content-list))
   "'"
   "&apos;"))

(define (get-second-local-text lang content-list)
  (string-replace
   (second (get-local-text lang content-list))
   "'"
   "&apos;"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generate index page                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (make-index-page lang content-data content-list)
  (let ([page-title (second (assv 'page-title content-data))]
	[article-element
         (index-html-generator lang content-data content-list)])
    (string-append
     "<!DOCTYPE html>\n"
     (format "<html lang='~a'>\n" lang)
     (make-head-element lang page-title)
     (make-body-element lang content-data article-element)
     "</html>")))

(define (index-html-generator lang content-data content-list)
  (let ([subtitle (cdr (assv 'subtitle content-data))])
    (string-append
     "    <section class='top-item'>\n"
     (format "      <h2>~a</h2>\n"
             (get-first-local-text lang subtitle))
     (make-android-apps-section lang content-data content-list)
     "    </section>\n")))

(define (make-android-apps-section lang content-data apps-content)
  (apply
   string-append
   (flatten
    (map (lambda (params)
           (let ([id (second (assv 'filename params))]
                 [filename (make-filename lang params)]
                 [app-name (second (assv 'page-title params))]
                 [introduction (cdr (assv 'introduction params))]
                 [preview-image (cdr (assv 'preview-image params))]
                 [badge (second (assv 'badge params))])
             `(,(format "      <article><a class='box-link' href='~a'>\n"
                        filename)
               ,(format "        <div class='col'><img src='~a' width='~a' height='~a' alt='skyclock view'></div>\n"
                        (first preview-image)
                        (second preview-image)
                        (third preview-image))
               ,(format "        <div class='description'><h3>~a</h3>\n" app-name)
               ,(format "          <p>~a</p>\n"
                        (get-first-local-text lang introduction))
               ;; ,(format "          <p>~a</p>\n" badge)
               "        </div></a>\n"
               "      </article>\n")))
         apps-content))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generate application pages                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (make-app-page lang content-data)
  (let ([page-title (second (assv 'page-title content-data))]
	[article-element (app-page-html-generator lang content-data)])
    (string-append
     "<!DOCTYPE html>\n"
     (format "<html lang='~a'>\n" lang)
     (make-head-element lang page-title)
     (make-body-element lang content-data article-element)
     "</html>")))

(define (app-page-html-generator lang content-data)
  (let ([subtitle (second (assv 'subtitle content-data))])
    (string-append
     (format "      <h2 class='top-item'>~a</h2>\n" subtitle)
     "      <section>\n"
     (make-section-intro lang content-data)
     "      </section>\n"
     "      <section>\n"
     (make-section-requirement lang content-data)
     "      </section>\n"
     "      <section>\n"
     (make-section-license lang content-data)
     "      </section>\n"
     "      <section>\n"
     (make-section-features lang content-data)
     "      </section>\n"
     "      <section>\n"
     (make-section-usage lang content-data)
     "      </section>\n"
     "      <section>\n"
     (make-section-update-history lang content-data)
     "      </section>\n"
     "      <section>\n"
     (make-section-privacy-policy lang content-data)
     "      </section>\n")))

(define (make-section-intro lang content-data)
  (let ([local-text (cdr (assv 'introduction content-data))]
        [badge (second (assv 'badge content-data))])
    (string-append
     (format "        <div class='description'><p>~a</p>\n"
             (get-first-local-text lang local-text))
     (format "          <p>~a</p></div>\n" badge)
     (make-figure content-data))))

(define (make-figure content-data)
  (let ([screenshots (cdr (assv 'screenshots content-data))]
        [title (second (assv 'page-title content-data))])
    (apply
     string-append
     (map (lambda (x)
            (format "        <figure><img src='~a' alt='~a screenshot' width='~a' height='~a'></figure>\n"
                    (first x)
                    title
                    (second x)
                    (third x)))
          screenshots))))
  
(define (make-section-requirement lang content-data)
  (let ([content (cdr (assv 'requirement content-data))])
    (string-append
     (format "        <h3>~a</h3>\n"
             (get-first-local-text lang (first content)))
     (format "        <p>~a</p>\n"
             (get-first-local-text lang (second content))))))
  
(define (make-section-license lang content-data)
  (let ([content (cdr (assv 'license content-data))])
    (string-append
     (format "        <h3>~a</h3>\n"
             (get-first-local-text lang (first content)))
     (format "        <p>~a [<a href='http://opensource.org/licenses/mit-license.php'>http://opensource.org/licenses/mit-license.php</a>]</p>\n"
             (get-first-local-text lang (second content))))))

(define (make-section-features lang content-data)
  (let* ([content (cdr (assv 'features content-data))]
	 [delimiter (get-delimiter lang)]
         [head-part `(,(format "        <h3>~a</h3>\n"
                               (get-first-local-text lang (first content)))
                      "        <ul>\n")])
    (apply
     string-append
     `(,@(foldl (lambda (x result)
		  (let ([local-text (get-local-text lang x)])
		    `(,@result
                      ,(format "          <li><strong>~a~a</strong>~a</li>\n"
                               (first local-text)
                               delimiter
                               (second local-text)))))
		head-part
		(cdr content))
       "        </ul>\n"))))

(define (make-section-usage lang content-data)
  (let* ([content (cdr (assv 'usage content-data))]
         [head-part `(,(format "        <h3>~a</h3>\n"
                               (get-first-local-text lang (first content))))])
    (apply
     string-append
     (foldl (lambda (x result)
	      (let ([local-text (get-local-text lang x)])
		`(,@result
		  ,(format "        <h4>~a</h4>\n" (first local-text))
		  ,(format "        <p>~a</p>\n" (second local-text)))))
	    head-part
	    (cdr content)))))
	
(define (make-section-update-history lang content-data)
  (let* ([content (cdr (assv 'update-history content-data))]
         [head-part `(,(format "        <h3>~a</h3>\n"
                               (get-first-local-text lang (first content))))])
    (apply
     string-append
     (foldl (lambda (x result)
              `(,@result
                ,(format "        <h4>~a</h4>\n" (first x)) ;; version
                ,(format "        <p>~a</p>\n" ;; date and time
                         (get-local-date-time-string lang (second x)))
                ,(format "        <p>~a</p>\n"
                         (get-first-local-text lang (third x)))))
            head-part
	    (cdr content)))))
	
(define (make-section-privacy-policy lang content-data)
  (let* ([content (cdr (assv 'privacy-policy content-data))]
         [head-part `(,(format "        <h3 id='privacy_policy'>~a</h3>\n"
                               (get-first-local-text lang (first content)))
                      ,(format "        <p>~a</p>\n"
                               (get-last-update-string lang (second content)))
                      ,(format "        <p>~a</p>\n"
                               (get-first-local-text lang (third content))))])
    (apply
     string-append
     (foldl (lambda (x result)
              `(,@result
                ,(format "          <h4>~a</h4>\n"
                         (get-first-local-text lang x))
                ,(format "          <p>~a</p>\n"
                         (get-second-local-text lang x))))
            head-part
            (cdddr content)))))


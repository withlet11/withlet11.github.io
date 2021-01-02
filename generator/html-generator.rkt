#lang racket

(require gregor
         "generator-common.rkt")

(provide index-html-generator
         app-page-html-generator)

(define (app-page-html-generator lang content-data)
  (let ([subtitle (second (assv 'subtitle content-data))])
    (string-append
     "    <article id=\"container\">\n"
     "      <h2>" subtitle "</h2>\n"
     (make-figure content-data)
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
     "      </section>\n"
     "    </article>\n")))

(define (index-html-generator lang content-data)
  (let ([subtitle (cdr (assv 'subtitle content-data))])
    (string-append
     "    <article id=\"container\">\n"
     "      <h2>" (first (get-local-text lang subtitle)) "</h2>\n"
     "      <section>\n"
     (make-android-apps-section lang content-data)
     "      </section>\n"
     "    </article>\n")))

(define (make-android-apps-section lang content-data)
  (let ([apps-content (cdr (assv 'apps content-data))])
    (apply
     string-append
     (map (lambda (x)
	    (let ([filename (make-filename lang x)]
		  [app-name (second (assv 'app-name x))]
		  [description (cdr (assv 'description x))]
		  [screenshot (cdr (assv 'screenshot x))])
	      (string-append
	       "        <h3><a href=\"" filename "\">" app-name "</a></h3>\n"
	       "        <p>" (first (get-local-text lang description)) "</p>\n"
	       "        <p><a href='https://play.google.com/store/apps/details?id=io.github.withlet11.skyclock&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a></p>\n"
	       "        <img src=\"" (first screenshot) "\" width=\"" (second screenshot) "\" height=\"" (third screenshot) "\" alt=\"skyclock view\">\n")))
	  apps-content))))

(define (make-section-intro lang content-data)
  (let ([local-text (cdr (assv 'introduction content-data))])
    (string-append
     "        <p>" (first (get-local-text lang local-text)) "</p>\n"
	       "        <p><a href='https://play.google.com/store/apps/details?id=io.github.withlet11.skyclock&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a></p>\n"
     )))

(define (make-figure content-data)
  (string-append "        <figure><img src=\""
		 (second (assv 'figure-path content-data))
		 "\" alt=\"skyclock screenshot\"></figure>\n"))
  
(define (make-section-requirement lang content-data)
  (let ([content (cdr (assv 'requirement content-data))])
    (string-append
     "        <h3>" (first (get-local-text lang (first content))) "</h3>\n"
     "        <p>" (first (get-local-text lang (second content))) "</p>\n")))
  
(define (make-section-license lang content-data)
  (let ([content (cdr (assv 'license content-data))])
    (string-append
     "        <h3>" (first (get-local-text lang (first content))) "</h3>\n"
     "        <p>" (first (get-local-text lang (second content))) " [<a href=\"http://opensource.org/licenses/mit-license.php\">http://opensource.org/licenses/mit-license.php</a>]</p>\n")))

(define (make-section-features lang content-data)
  (let* ([content (cdr (assv 'features content-data))]
	 [delimiter (get-delimiter lang)]
	 [head-part `("        <h3>"
		      ,(first (get-local-text lang (first content)))
		      "</h3>\n"
		      "        <ul>\n")])
    (apply
     string-append
     `(,@(foldl (lambda (x result)
		  (let ([local-text (get-local-text lang x)])
		    `(,@result
		      "          <li><strong>"
		      ,(first local-text)
		      ,delimiter
		      "</strong>"
		      ,(second local-text)
		      "</li>\n")))
		head-part
		(cdr content))
       "        </ul>\n"))))

(define (make-section-usage lang content-data)
  (let* ([content (cdr (assv 'usage content-data))]
	 [head-part `("        <h3>"
		      ,(first (get-local-text lang (first content)))
		      "</h3>\n")])
    (apply
     string-append
     (foldl (lambda (x result)
	      (let ([local-text (get-local-text lang x)])
		`(,@result
		  "        <h4>" ,(first local-text) "</h4>\n"
		  "        <p>" ,(second local-text) "</p>\n")))
	    head-part
	    (cdr content)))))
	
(define (make-section-update-history lang content-data)
  (let* ([content (cdr (assv 'update-history content-data))]
	 [head-part `("        <h3>"
		      ,(first (get-local-text lang (first content)))
		      "</h3>\n")])
    (apply
     string-append
     (foldl (lambda (x result)
	      `(,@result
		"        <h4>" ,(first x) "</h4>\n" ;; version
		"        <p>"
		,(get-local-date-time-string lang (second x))
		"</p>\n" ;; date and time
		"        <p>" ,(first (get-local-text lang (third x))) "</p>\n"))
	    head-part
	    (cdr content)))))
	
(define (make-section-privacy-policy lang content-data)
  (let* ([content (cdr (assv 'privacy-policy content-data))]
	 [head-part `("        <h3 id=\"privacy_policy\">"
		      ,(first (get-local-text lang (first content)))
		      "</h3>\n"
		      "        <p>" ,(get-last-update-string lang (second content)) "</p>\n"
		      "        <p>" ,(first (get-local-text lang (third content))) "</p>\n")])
    (apply
     string-append
     (foldl (lambda (x result)
	      `(,@result
		"          <h4>"
		,(first (get-local-text lang x))
		"</h4>\n"
		"          <p>"
		,(second (get-local-text lang x))
		"</p>\n"))
	    head-part
	    (cdddr content)))))

#lang racket

(require "generator-common.rkt")

(provide make-readme-md)

(define (make-readme-md lang content-data)
  (let ([app-name (second (assv 'page-title content-data))]
	[introduction (cdr (assv 'introduction content-data))]
	[requirement (caddr (assv 'requirement content-data))]
	[features (cddr (assv 'features content-data))]
	[usage (cddr (assv 'usage content-data))])
    (string-append
     "# " app-name "\n"
     (first (get-local-text lang introduction))
     "\n\n"
     "## Requirement\n"
     (first (get-local-text lang requirement))
     "\n\n"
     "## Features\n"
     (apply string-append
	   (map (lambda (x)
		  (string-append
		   "* **"
		   (first (get-local-text lang x))
		   ":** "
		   (second (get-local-text lang x))
		   "\n"))
		features))
     "\n\n"
     "## Usage\n\n"
     (apply string-append
	   (map (lambda (x)
		  (string-append
		   "### "
		   (first (get-local-text lang x))
		   "\n* "
		   (second (get-local-text lang x))
		   "\n\n"))
		usage)))))
	

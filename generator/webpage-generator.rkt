#lang racket

;;; webpage-generator.rkt -- generate web pages from articles with tags
;;
;; The MIT License (MIT)
;;
;; Copyright (c) 2020-2021 Yasuhiro Yamakawa <withlet11@gmail.com>
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Data and Generator for index pages                         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require gregor
         "generator-common.rkt"
         "html-generator.rkt"
         "readme-generator.rkt"
         "content-of-index.rkt"
	 "content-of-skyclock.rkt"
	 "content-of-skyclocklite.rkt")

(define html-page-list
  `((,skyclock-data ,app-page-html-generator)
    (,skyclocklite-data ,app-page-html-generator)
    (,index-data ,index-html-generator)))

(define readme-list
  `((,skyclock-data "skyclock")
    (,skyclocklite-data "skyclocklite")))

(define language-list '(en ja))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generate HTML pages                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(for-each (lambda (data-and-generator)
            (let ([data (first data-and-generator)]
                  [generator (second data-and-generator)])
              (for-each (lambda (lang)
                          (call-with-output-file (make-filename lang data)
                            (lambda (out)
                              (display (make-page lang data generator) out))
                            #:exists 'replace))
                        language-list)))
          html-page-list)
            
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generate README.md                                         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(for-each (lambda (params)
       (call-with-output-file (string-append (second params) "/README.md")
         (lambda (out)
           (for-each (lambda (lang)
                       (display (make-readme-md lang (first params)) out))
                     '(en)))
         #:exists 'replace))
     readme-list)

#;(call-with-output-file "skyclocklite/README.md"
  (lambda (out)
    (for-each (lambda (lang)
		(display (make-readme-md lang skyclocklite-data) out))
	      '(en)))
  #:exists 'replace)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generate text for Google Play                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (make-text-for-google-play lang content-data)
  (let ([introduction (cdr (assv 'introduction content-data))]
	[features (cddr (assv 'features content-data))])
    (string-append
     (first (get-local-text lang introduction))
     "\n\n"
     (apply string-append
	   (map (lambda (x)
		  (string-append
		   (first (get-local-text lang x))
		   (get-delimiter lang)
		   "\n"
		   (second (get-local-text lang x))
		   "\n\n"))
		features)))))

(call-with-output-file "skyclock/text_for_google_play.txt"
  (lambda (out)
    (for-each (lambda (lang)
		(display (make-text-for-google-play lang skyclock-data) out))
	      '(en ja)))
  #:exists 'replace)

(call-with-output-file "skyclocklite/text_for_google_play.txt"
  (lambda (out)
    (for-each (lambda (lang)
		(display (make-text-for-google-play lang skyclocklite-data) out))
	      '(en ja)))
  #:exists 'replace)

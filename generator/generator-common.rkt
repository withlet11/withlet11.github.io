#lang racket

;;; generator-common.rkt -- common functions for generating documents
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

(require gregor)

(provide get-delimiter
	 get-last-update-string
	 get-local-date-time-string
	 get-local-text
	 make-directory-name
	 make-filename)

(define (make-filename lang content-data)
  (let ([filename (second (assv 'filename content-data))])
    (if (eqv? lang 'en)
	(string-append filename ".html")
	(string-append filename "-" (symbol->string lang) ".html"))))

(define (make-directory-name content-data)
  (second (assv 'filename content-data)))

(define (get-local-text lang content-list)
  (cond [(assv lang content-list) => cdr]
	[else (cdar content-list)]))

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

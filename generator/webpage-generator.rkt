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
;; How to add new contents                                    ;;
;; 1. Create 'content-of-***.rkt'                             ;;
;; 2. Create directory with name '***'                        ;;
;; 3. Add filenames to '(require ...)'                        ;;
;; 4. Add parameters to 'content-list'                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require gregor
         "generator-common.rkt"
         "html-generator.rkt"
         "readme-generator.rkt"
         "gp-text-generator.rkt"
	 "content-of-clockwithplanisphere.rkt"
	 "content-of-clockwithplanispherelite.rkt"
	 "content-of-celestialpositions.rkt"
	 "content-of-digitalquadrant.rkt"
         "content-of-index.rkt")

(define content-list `(,clockwithplanisphere-data
                       ,clockwithplanispherelite-data
                       ,celestialpositions-data
                       ,digitalquadrant-data))

(define language-list '(en ja))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generate HTML pages                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(for-each (lambda (param)
            (for-each (lambda (lang)
                        (call-with-output-file (make-filename lang param)
                          (lambda (out)
                            (display (make-app-page lang param) out))
                          #:exists 'replace))
                      language-list))
          content-list)
            
(let ([data index-data]
      [content-list content-list])
  (for-each (lambda (lang)
              (call-with-output-file (make-filename lang data)
                (lambda (out)
                  (display (make-index-page lang data content-list) out))
                #:exists 'replace))
            language-list))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generate README.md                                         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(for-each (lambda (param)
       (call-with-output-file (string-append
                               (make-directory-name param)
                               "/README.md")
         (lambda (out)
           (for-each (lambda (lang)
                       (display (make-readme-md lang param) out))
                     '(en)))
         #:exists 'replace))
     content-list)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generate text for Google Play                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(for-each (lambda (param)
            (call-with-output-file (string-append
                                    (make-directory-name param)
                                    "/text_for_google_play.txt")
              (lambda (out)
                (for-each (lambda (lang)
                            (display (make-text-for-google-play lang param)
                                     out))
                          '(en ja)))
              #:exists 'replace))
          content-list)

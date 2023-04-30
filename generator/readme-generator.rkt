#lang racket

;;; readme-generator.rkt -- generate README documents
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

(require "generator-common.rkt")

(provide make-readme-md)

(define (make-readme-md lang content-data)
  (let ([app-name (second (assv 'page-title content-data))]
	[introduction (cdr (assv 'introduction content-data))]
	[requirement (caddr (assv 'requirement content-data))]
	[features (cddr (assv 'features content-data))]
	[usage (cddr (assv 'usage content-data))])
    (apply
     string-append
     `(,(format "# ~a\n" app-name)
       ,(format "~a\n\n" (first (get-local-text lang introduction)))
       "## Requirement\n"
       ,(format "~a\n\n" (first (get-local-text lang requirement)))
       "## Features\n"
       ,@(map (lambda (x)
                (format "* **~a:** ~a\n"
                        (first (get-local-text lang x))
                        (second (get-local-text lang x))))
              features)
       "\n\n"
       "## Usage\n\n"
       ,@(flatten
          (map (lambda (x)
                 `(,(format "### ~a\n" (first (get-local-text lang x)))
                   ,(format "* ~a\n\n" (second (get-local-text lang x)))))
                usage))))))
	
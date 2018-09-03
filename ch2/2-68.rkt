(load "ch2support.scm")
(load "2-67.rkt")


(define (encode message tree)
  (if (null? message)
      '()
      (append (encode-symbol (car message) tree)
              (encode (cdr message) tree))))

(define (encode-symbol word t)
  (cond
   ((leaf? t)
   '())
   ((in word
        (symbols (left-branch t)))
    (cons 0
          (encode-symbol word (left-branch t))))
   (else
    (cons 1
          (encode-symbol word (right-branch t))))))


(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define in element-of-set?)

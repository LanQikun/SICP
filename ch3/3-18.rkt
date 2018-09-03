(load "util.rkt")

(define (ans ls)
  (define (iter l used)
    (cond ((null? l)
           #f)
          ((in-set? (car l) used)
           #t)
          (else
           (iter (cdr l) (cons (car l) used)))))
  (iter ls '()))

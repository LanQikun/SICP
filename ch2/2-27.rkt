(load "ch2support.scm")

(define x (list (list 1 2) (list 3 4)))

(define y (list (list 1 2) (list 3 4) (list 5 6)))

(define (deep-reverse tree)
  (define (iter t result)
    (cond ((null? t)
           result)
          ((not (pair? t))
           t)
          (else
           (iter (cdr t)
                 (cons (deep-reverse (car t))
                       result)))))
  (iter tree '()))



  
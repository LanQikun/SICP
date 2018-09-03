(load "ch2support.scm")

(define (union-set set res)
  (cond ((null? set)
         res)
        ((element-of-set? (car set) res)
         (union-set (cdr set) res))
        (else
         (union-set (cdr set) (cons (car set)
                                    res)))))

(load "ch2support.scm")


(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (car x)
  (if (odd? x)
      0
      (+ 1 (car (/ x 2)))))

(define (cdr x)
  (if (noz? (mod x 3))
      0
      (+ 1 (cdr (/ x 3)))))
  
      
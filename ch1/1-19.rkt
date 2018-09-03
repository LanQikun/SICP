(load "util.rkt")
(define (fib n)
    (fib-helper 1 0 0 1 n))

(define (fib-helper a b p q n)
    (cond ((= n 0)
            b)
          ((even? n)
            (fib-helper a
                        b
                        (+ (square p) (square q))
                        (+ (* 2 p q) (square q))
                        (/ n 2)))
          (else
            (fib-helper (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- n 1)))))
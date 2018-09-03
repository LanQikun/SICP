(load "util.rkt")

(define (search-for-primes a b)
  (cond ((> a b)
         (display "end"))
        ((odd? a)
         (let ((result (prime? a)))
           (if result
               a
               (search-for-primes (+ a 2) b) )))
        (else
         (search-for-primes (+ a 1) b))))

      
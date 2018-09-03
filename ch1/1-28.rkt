(load "util.rkt")


(define (expmod base exp m)
  (cond ((= exp 0)
         1)
        ((even? exp)
         (let ((temp (expmod base (/ exp 2) m)))
           (if (and (!= temp 1)
                    (!= temp (- m 1))
                    (= 1 (remainder (square temp) m)))
               0
               (remainder (square temp) m))))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a (- n 1) n) 1))
  (try-it (+ 1 (random (- n 1)))))

(load "util.rkt")

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (check n)
    (check-helper 1 n))

(define (check-helper a n)
    (cond ((= a n)
            #t)
          ((= (expmod a n n) a)
            (check-helper (+ a 1) n))
          (else
            #f)))

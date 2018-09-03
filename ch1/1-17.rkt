(load "util.rkt")

(define (mul a b)
  (if (= b 1)
      a
      (if (even? b)
          (double (mul a (halve b)))
          (+ a (mul a (- b 1))))))


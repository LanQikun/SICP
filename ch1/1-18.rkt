(load "util.rkt")

(define (mul a b)
  (mul-helper a b 0))

(define (mul-helper a b res)
  (if (= b 0)
      res
      (if (even? b)
          (mul-helper (double a) (half b) res)
          (mul-helper a (- b 1) (+ a res)))))

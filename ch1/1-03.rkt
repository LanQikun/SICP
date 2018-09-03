(define (f a b c)
  (if (and (>= a c) (>= b c))
      (+ a b)
      (f b c a)))

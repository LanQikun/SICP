(define (all-f a b f)
  (and (f a) (f b)))

(define (div-interval x y)
  (define (all-positive a b)
    (all-f a b (lambda (x) (> x 0))))
  (define (all-negative a b)
    (all-f a b (lambda (x) (< x 0))))
  (let
      ((up-y (upper-bound y))
       (low-y (lower-bound y)))
    (if (or (all-negative up-y low-y)
            (all-positive up-y low-y))
        (mul-interval x
                      (make-interval (/ 1.0 (upper-bound y))
                                     (/ 1.0 (lower-bound y))))
        (error "不能除以一个经过0的区间" x y))))

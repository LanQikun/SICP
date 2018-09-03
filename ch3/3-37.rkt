(define (c-sub x y)
    (let ((d (make-connector)))
        (adder y d x)
        d))

(define (c* x y)
    (let ((product (make-connector)))
        (multiplier x y product)
        product))

(define (c/ p q)
    (let ((r (make-connector)))
        (multiplier q r p)
        r))

(define (cv x num)
  (constant num x))

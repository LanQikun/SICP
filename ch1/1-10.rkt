(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;f(n) = 2n
;g(n) = 2**n
;h(n)表示进行n次2**2**2...这样的计算
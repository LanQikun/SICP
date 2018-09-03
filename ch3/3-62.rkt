(load "3-61")

;a/b = a*(1/b)
(define (div-series a b)
  (if (= (stream-car a) 0)
      (error "0")
      (mul-series a
                  (ans61 b))))
;use (div-series sin cos) to get tan

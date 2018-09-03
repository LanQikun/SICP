;a
(define (integrate-series nums)
        (stream-mul (stream-map (lambda (x) (/ 1 x))
                                integers)
                    nums))


;b
(define cosine-series
  (cons-stream 1 (integrate-series sine-series)))

(define sine-series
  (cons-stream 0 (stream-map - (integrate-series cosine-series))))

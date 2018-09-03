
(define (repeated f n)
  (define (iter n x)
    (if (= n 1)
        (f x)
        (f (iter (- n 1) x))))
  (lambda (x) (iter n x)))

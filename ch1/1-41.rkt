(define (double f)
  (lambda (x)
    (f (f x))))

(define (test f x)
  ((double f) x))

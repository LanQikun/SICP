(load "util.rkt")
(load "1-43.rkt")

(define dx 0.0001)

(define (smooth f)
  (lambda (x)
    (avg3 (f (- x dx))
          (f x)
          (f (+ x dx)))))

(define (ans f n)
  ((repeated smooth n) f))


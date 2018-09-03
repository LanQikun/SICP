(load "util.rkt")


(define (iterative-improve good-enough? improve)
  (define (helper guess)
    (let ((next (improve guess)))
      (if (good-enough? guess next)
          next
          (helper next))))
  helper)

(define dx 0.00001)

(define (good-enough? v1 v2)
  (< (abs (- v1 v2)) dx))

(define (sqrt x)
  (define (improve guess)
    (avg guess (/ x guess)))
  ((iterative-improve good-enough? improve) 1.0))

(define (fixed-point f x)
  (define (improve guess)
        (f guess))
  ((iterative-improve good-enough? improve) 1.0))

  
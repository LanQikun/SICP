(load "util.rkt")

(define (sqrt-helper guess x old)
  (if (good-enough? guess old)
      guess
      (sqrt-helper (improve guess x) x guess)))

(define (improve guess x)
  (ave guess (/ x guess)))

(define (good-enough? x old)
  (<
   (/ (dis old x) old)
   0.01))

(define (sqrt x)
  (sqrt-helper 1.0 x x))

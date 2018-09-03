(load "util.rkt")

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (close-enough? x y)
  (< (abs (- x y)) 0.001))

(define (target x)
   (/ (log 1000) (log x)))

;1
(define (solution1)
  (fixed-point target 2))

;2
(define (average-damp f)
  (lambda (x) (ave x (f x))))

(define (solution2)
  (fixed-point (average-damp target) 2))

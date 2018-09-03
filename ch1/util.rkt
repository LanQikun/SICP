; (load "util.rkt")


;logical
(define (!= a b)
  (not (= a b)))

(define (in x a b)
  (or (= x a)
      (= x b)))


;compute
(define (square x)
  (* x x))

(define (halve x)
  (/ x 2))

(define (double x)
  (* x 2))

(define (cube x)
  (* x x x))

(define (avg x y)
  (/ (+ x y) 2))

(define (avg3 x y z)
  (/ (+ x y z) 3))

(define (dis a b)
  (abs (- a b)))

(define div quotient)

(define mod remainder)


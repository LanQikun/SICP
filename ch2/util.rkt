

;; (load "util.rkt")




; list
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (filter predicate sequence)
  (cond ((null? sequence)
         '())
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else
         (filter predicate (cdr sequence)))))

(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))

(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))))

;logical
(define (!= a b)
  (not (= a b)))

(define (in x a b)
  (or (= x a)
      (= x b)))

(define (all-f f a b)
  (and (f a) (f b)))

(define (pos? x)
  (> x 0))

(define (neg? x)
  (< x 0))

(define (nz? x)
  (!= x 0))

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



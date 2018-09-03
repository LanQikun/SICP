(load "util.rkt")

(define (get-num n)
  (define (helper k)
    (cond ((or (= k 0) (= k n))
           1)
          ((odd? k)
           4)
          (else
           2)))
  helper)

(define (get-y f a h)
  (define (helper k)
    (f (+ a
          (* k h))))
  helper)

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (helper f a b n h)
  (define (term k)
    (* ((get-num n) k)
       ((get-y f a h) k)))
  (* (/ h 3.0)
     (sum term 0 inc n)))

(define (function f a b n)
  (helper f
          a
          b
          n
          (/ (- b a) n)))


   
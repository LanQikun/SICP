(load "ch2support.scm")


(define (make-rat n d)
  (define a (abs n))
  (define b (abs d))
      (let
          ((positive (or (all-f pos? n d)
                         (all-f neg? n d)))
           (g (gcd a b)))
          (if positive
              (cons (/ a g) (/ b g))
              (cons (/ (- a) g) (/ b g)))))

(define (make-rat n d)
    (if (< d 0)
        (cons (- n) (- d))
        (cons n d)))
(define (sub-interval a b)
  (let
      ((low-a (lower-bound a))
       (up-a (upper-bound a))
       (low-b (lower-bound b))
       (up-b (upper-bound b)))
    (make-interval (- low-a low-b) (- up-a up-b))))

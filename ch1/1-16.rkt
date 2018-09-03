(define (exp b n)
  (exp-helper b n 1))


(define (exp-helper b n res)
  (if (= n 0)
      res
      (if (even? n)
          (exp-helper (* b b) (/ n 2) res)
          (exp-helper b (- n 1) (* res b)))))

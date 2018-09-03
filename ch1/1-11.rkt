(define (f-recur n)
  (if (< n 3)
      n
      (+ (f-recur (- n 1))
         (* 2 (f-recur (- n 2)))
         (* 3 (f-recur (- n 3))))))

(define (f-iter n)
  (if (< n 3)
      n
      (f-iter-helper 0 1 2 n)))

(define (f-iter-helper a b c count)
  (if (= count 3)
      (+ (* 3 a) (* 2 b) c)
      (f-iter-helper b
                     c
                     (+ (* 3 a)
                        (* 2 b) c)
                     (- count 1))))

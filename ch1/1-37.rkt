
;递归
(define (iter n d k)
  (if (= k 0)
      0
      (/ n
         (+ d
            (iter n d (- k 1))))))

(define (test-iter k)
  (iter 1.0 1.0 k))

;迭代
(define (recur n d k)
  (recur-helper n d k 0))

(define (recur-helper n d k res)
  (if (= k 0)
      res
      (recur-helper n
                    d
                    (- k 1)
                    (/ n (+ d res)))))
  

(define (test-recur k)
  (recur 1.0 1.0 k))
  
                    
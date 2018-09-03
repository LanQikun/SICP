(load "util.rkt")

(define (ans x)
  (+ (iter 1 get-d 0 x) 2))


(define (iter n d k count)
  (if (= k count)
      0
      (/ n
         (+ (d k)
            (iter n d (+ k 1) count)))))

(define (get-d k)
  (let ((q (div  k 3))
        (r (mod k 3)))
    (if (in r 0 2)
        1.0
        (double (inc q)))))

        
  

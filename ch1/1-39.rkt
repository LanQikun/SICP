(load "util.rkt")

(define (iter n d k count)
  (if (= k count)
      0
      (/ (n k)
         (+ (d k)
            (iter n d (+ k 1) count)))))

(define (ans x count)
  (define (get-n k)
    (if (= k 0)
        x
        (- (square x))))
  (define (get-d k)
    (+ (* 2 k) 1.0))
  (iter get-n get-d 0 count))

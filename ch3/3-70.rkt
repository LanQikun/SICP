(load "3-56.rkt")


(define (merge-weighted s1 s2 weigh)
  (cond ((stream-null? s1) s2)
        ((stream-null? s2) s1)
        (else
         (let ((s1car (stream-car s1))
               (s2car (stream-car s2)))
           (if (neg? (weigh s1car) (weigh s2car))
                  (cons-stream s1car
                               (merge-weighted (stream-cdr s1)
                                               s2
                                               weigh)))
                  (cons-stream s2car
                               (merge-weighted s1
                                               (stream-cdr s2)
                                               weigh))))))


(define (weighted-pairs s1 s2 weigh)
  (cons-stream
   (list (stream-car s) (stream-car t))
   (merge-weighted
    (stream-map (lambda (x) (list (stream-car s) x))
                (stream-cdr t))
    (weighted-pairs (stream-cdr s) (stream-cdr t) weigh)
    weigh)))



(define (ans1)
  (weighted-pairs integers
                  integers
                  pair-sum))

(define (ans2)
  (define (order-sum pair)
    (let ((i (car pair))
          (j (cadr pair)))
    (+ (double i)
       (triple j)
       (* 5 i j))))
  
  (weighted-pairs s
                  s
                  order-sum)
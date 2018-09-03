(load "2-40.rkt")
(load "ch2support.scm")


(define (unique-triples n)
    (flatmap (lambda (i)
                 (map (lambda (j) (cons i j))
                      (unique-pairs (- i 1))))     
             (enumerate-interval 1 n)))



(define (ans n)
  (define (sum-n? l)
    (= (accumulate + 0 l)
       n))
  (filter sum-n? (unique-triples n)))


(define (f r c)
  (cond ((or (= c 1) (= r c))
         1)
        (else (+ (f (- r 1) (- c 1))
                 (f (- r 1) c)))))


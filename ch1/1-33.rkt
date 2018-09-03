(define (filtered-accumulate combiner null-value term a next b filter)
  (define (iter a result)
    (cond ((> a b)
           result)
          ((filter a)
           (iter (next a) (combiner result (term a))))
          (else
           (iter (next a) result))))
  (iter a null-value))

(define (square x)
  (* x x))

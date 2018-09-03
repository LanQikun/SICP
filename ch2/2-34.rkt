(define (horner-eval x seq)
  (accumulate (lambda (first rest)
                (+ first (* x rest)))
              0
              seq))

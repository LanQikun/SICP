(define (reverse seq)
  (fold-right (lambda (x y) (append y (list x)))
              nil
              seq))

(define (reverse seq)
  (fold-left (lambda (x y) (cons y x))
             nil
             seq))

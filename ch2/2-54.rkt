(define (equal? a b)
  (cond ((eq? a b)
         #t)
        ((or (null? a) (null? b))
        #f)
      (else
       (and (equal? (car a) (car b))
            (equal? (cdr a) (cdr b))))))

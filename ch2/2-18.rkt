(define (reverse l)
  (define (helper items result)
    (if (null? items)
        result
        (helper (cdr items)
                (cons (car items) result))))
  (helper l '()))

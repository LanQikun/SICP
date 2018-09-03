(define (same-parity first . others)
  (define (helper f l)
    (cond
      ((null? l)
       nil)
      ((f (car l))
       (cons (car l) (helper f (cdr l))))
      (else
       (helper f (cdr l)))))
      (cons first
            (helper (if (even? first)
                        even?
                        odd?)
                    others)))


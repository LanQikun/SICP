(define (for-each f l)
  (if (null? l)
      #t
      (begin
        (f (car lst))
        (for-each f (cdr lst)))))



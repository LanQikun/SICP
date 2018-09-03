 (load "util.rkt")


(define (ans as bs ss c)
  (define (iter list-a list-b list-s c-in)
    (if (not (null? list-a))
        (let ((c-out (make-wire)))
            (begin (full-adder (car list-a)
                        (car list-b)
                        c-in
                        (car list-s)
                        c-out)
                   (iter (cdr list-a)
                        (cdr list-b)
                        (cdr list-s)
                        c-out)))
        'ok))
  (iter as bs ss c))


                
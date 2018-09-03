(load "util.rkt")

(define (cycle? lst)
    (define (iter x y)
        (let ((i (walk 1 x))
              (j (walk 2 y)))
            (cond ((or (null? i) (null? j))
                    #f)
                  ((eq? i j)
                    #t)
                  (else
                    (iter i j)))))
    (iter lst lst))

(define (walk step lst)
    (cond ((null? lst)
            '())
          ((= step 0)
            lst)
          (else
            (walk (- step 1)
                       (cdr lst)))))
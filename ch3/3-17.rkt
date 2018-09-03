(load "util.rkt")


(define (count-pairs ls)
  (let ((used '()))
    (define (iter l)
      (cond ((or (not (pair? l)))
             0)
            ((in-set? l used)
             0)
            (else
             (+ (iter (car l))
                (iter (cdr l))
                1))))
    (iter ls)))

             
            
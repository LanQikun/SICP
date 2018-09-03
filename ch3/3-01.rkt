

(define (make-accumulator total)
  (lambda (amount)
    (begin (set! total (+ amount total))
           total)))

(define A (make-accumulator 5))

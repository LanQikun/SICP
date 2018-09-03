(load "util.rkt")

(define (stream-limit s t)
  (let ((a (stream-car s))
        (b (stream-car (stream-cdr s))))
    (if (< (dis a b) t)
        b
        (stream-limit (stream-cdr s) t))))

(define (ans61 s)
  (define helper
    (cons-stream 1
               (mul-streams (stream-map - (stream-cdr s))
                            helper)))
  helper)


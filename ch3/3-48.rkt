(define (serialized-exchange acc-1 acc-2)
    (if (< (id acc-1) (id acc-2))
        (serialize-and-exchange acc-1 acc-2)
        (serialize-and-exchange acc-2 acc-1)))

(define (serialize-and-exchange low high)
    (let ((low-serializer (low 'serializer))
          (high-serializer (high 'serializer)))
            ((low-serializer (high-serializer exchange))
             low
             high))))

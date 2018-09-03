
(define (install-scheme-number-package)

    (define (tag x)
        (attach-tag 'scheme-number x))

    (put 'make 'scheme-number
        (lambda (x)
            (tag x)))
  
    (put '=zero? '(scheme-number)
        (lambda (value)
            (= value 0)))

'done)

(define (=zero? x)
    (apply-generic '=zero? x))

(define (install-scheme-number-package)
    ;; internal procedures
    (define (tag x)
        (attach-tag 'scheme-number x))

    ;; interface to rest of the system
    (put 'make 'scheme-number
        (lambda (x)
            (tag x)))

    (put 'equ? '(scheme-number scheme-number)
        (lambda (x y)
            (= x y)))

'done)

(define (equ? x y)
    (apply-generic 'equ? x y))

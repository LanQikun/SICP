(load "ch2support.scm")


;a
;该程序提取了表格中的deriv操作，作用于给定的参数
;因为它们不符合表格项的格式，需要另外添加相关项

;b
(define (install-sum-package)
    ;;; internal procedures 
    (define (addend s)
        (car s))

    (define (augend s)
        (cadr s))

    (define (make-sum x y)
        (cond ((=number? x 0)
                y)
              ((=number? y 0)
                x)
              ((and (number? x) (number? y))
                (+ x y))
              (else
                (attach-tag '+ x y))))

    ;;; interface to the rest of the system
    (put 'addend '+ addend)
    (put 'augend '+ augend)
    (put 'make-sum '+ make-sum)

    (put 'deriv '+
        (lambda (exp var)
            (make-sum (deriv (addend exp) var)
                      (deriv (augend exp) var))))
  'done)

(define (make-sum x y)
    ((get 'make-sum '+) x y))

(define (addend sum)
    ((get 'addend '+) (contents sum)))

(define (augend sum)
    ((get 'augend '+) (contents sum)))

;c
(define (install-product-package)
    ;;; internal procedures
    (define (multiplier p)
        (car p))

    (define (multiplicand p)
        (cadr p))

    (define (make-product x y)
        (cond ((or (=number? x 0) (=number? y 0))
                0)
              ((=number? x 1)
                y)
              ((=number? y 1)
                x)
              ((and (number? x) (number? y))
                (* x y))
              (else
                (attach-tag '* x y))))

    ;;; interface to the rest of the system
    (put 'multiplier '* multiplier)
    (put 'multiplicand '* multiplicand)
    (put 'make-product '* make-product)

    (put 'deriv '*
        (lambda (exp var)
            (make-sum
                (make-product (multiplier exp)
                              (deriv (multiplicand exp) var))
                (make-product (deriv (multiplier exp) var)
                              (multiplicand exp)))))
  'done)

(define (make-product x y)
    ((get 'make-product '*) x y))

(define (multiplier product)
    ((get 'multiplier '*) (contents product)))

(define (multiplicand product)
    ((get 'multiplicand '*) (contents product)))

;d
;将put的前两个参数位置交换即可

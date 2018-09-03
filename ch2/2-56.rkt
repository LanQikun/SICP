(load "ch2support.scm")


(define (exponentiation? x)
  (and (pair? x) (eq? (car x) '**)))

(define (base s) (cadr s))

(define (expoent s) (caddr s))

(define (make-exponentiation b e)
  (cond ((=number? e 0)
         1)
        ((=number? e 1)
         b)
        ((and (number? b) (number? e))
         (expt b e))
        (else
         (list '** b e))))

(define (deriv exp var)
  (cond ((number? exp)
         0)
        ((variable?
          exp)
         (if (same-variable? exp var)
             1
             0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
           (make-product (multiplier exp)
                         (deriv (multiplicand exp) var))
           (make-product (deriv (multiplier exp) var)
                         (multiplicand exp))))
        ((exponentiation? exp)
         (let ((b (base exp))
               (e (expoent exp)))
           (make-product (make-product e
                                       (make-exponentiation b (- e 1)))
                         (deriv b var))))
        (else
         (error "unknown expression type -- DERIV" exp))))
        
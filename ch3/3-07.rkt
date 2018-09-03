(load "util.rkt")

(define (make-account balance password)
  (define (withdraw amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  (define (dispatch pw m)
    (cond ((not (eq? pw password))
           "Incorrect password")
          ((eq? m 'add) #t)
          ((eq? m 'withdraw) withdraw)
          ((eq? m 'deposit) deposit)
          (else (error "Unknown request -- MAKE-ACCOUNT"
                       m))))
  dispatch)

(define (make-joint old-acc old-pw new-pw)
  (if (not (old-acc old-pw 'add))
      "Fail"
  (lambda (pw msg)
    (if (eq? pw new-pw)
        (old-acc old-pw msg)
        "Fail"))))


(define peter-acc (make-account 100 'old))
 
(define paul-acc
  (make-joint peter-acc 'old 'new))
  
 
;: ((peter-acc 'old 'withdraw) 40)
;: ((paul-acc 'new 'withdraw) 40)
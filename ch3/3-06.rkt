(define random-init 7)

(define rand
  (let ((x random-init))
    (lambda (msg)
      (cond ((eq? msg 'generate)
	     (set! x (random-update x))
	     x)
	    ((eq? msg 'reset)
	     (lambda (set-value)
               (set! x set-value)
               'set-value-done))
	    (else
	     (error "Unknown request -- RAND"
		    m))))))

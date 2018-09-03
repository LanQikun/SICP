(load "3-70.rkt")


(define (weigh pair)
  (+ (cube (car pair))
     (cube (cadr pair))))

(define pairs
  (weighted-pairs integers
                  integers
                  weigh))

(define (iter rest pre before-pre)
  (begin
    (if (= (weigh (car rest))
           (weigh pre)
           (weigh (before-pre)))
        (display (weigh before-pre))
        (display (car rest))
        (display pre)
        (display before-pre)
        (newline))
    (iter (cdr rest)
          (car rest)
          pre)))

(define (ans)
  (iter pairs '(0 0) '(0 0)))

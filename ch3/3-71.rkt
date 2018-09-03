(define (weigh pair)
  (+ (cube (car pair))
     (cube (cadr pair))))

(define pairs
  (weighted-pairs integers
                  integers
                  weigh))

(define (iter rest pre)
  (begin
    (if (= (weigh (car rest))
           (weigh (pre)))
        (display (weigh pre))
        (newline))
    (iter (cdr rest)
          (car rest))))

(define (ans)
  (iter pairs '(0 0)))

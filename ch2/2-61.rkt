 (load "ch2support.scm")

(define (adjoin-set x set)
  (if (null? set)
      (list x)
      (let ((a (car set)))
        (cond ((= a x)
               set)
              ((< a x)
               (cons a
                     (adjoin-set x (cdr set))))
              (else
               (cons x set))))))

    
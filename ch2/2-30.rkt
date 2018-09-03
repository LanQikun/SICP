(define (square-tree tree)
  (cond
    ((null? tree)
     nil)
    ((not (pair? tree))
     (* tree tree))
    (else
     (cons (square-tree (car tree))
           (square-tree (cdr tree))))))

(define (square-tree2 tree)
  (map
   (lambda (t)
     (if (not (pair? t))
         (* t t)
         (square-tree2 t)))
   tree))

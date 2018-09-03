(define (tree-map f tree)
  (map
   (lambda (t)
     (if (not (pair? t))
         (f t)
         (tree-map f t)))
   tree))


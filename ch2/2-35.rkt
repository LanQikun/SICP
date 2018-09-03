(define (count-leaves t)
  (define (helper tree)
    (map (lambda (sub-tree)
           (if (not (pair? sub-tree))
               1
               (count-leaves sub-tree)))
         tree))
               
  (accumulate + 0 (helper t)))

              
                     
                   
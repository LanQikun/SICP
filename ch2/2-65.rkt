(load "ch2support.scm")

(load "2-62.rkt")


(define x (list->tree '(1 3 5 7 9 11)))



(define (union-tree tree1 tree2)
  (let ((l1 (tree->list tree1))
        (l2 (tree->list tree2)))
    (list->tree (union-set l1 l2))))
  

(define (intersection-tree tree1 tree2)
  (let ((l1 (tree->list tree1))
        (l2 (tree->list tree2)))
    (list->tree (intersection-set l1 l2))))

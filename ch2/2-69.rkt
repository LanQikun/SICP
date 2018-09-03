(load "ch2support.scm")



(define (generate-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))

(define (successive-merge trees)
  (if (= (length trees) 1)
      trees
      (let ((a (car trees))
            (b (cadr trees))
            (rest (cddr trees)))
        (successive-merge (adjoin-set (make-code-tree a b)
                                      rest)))))

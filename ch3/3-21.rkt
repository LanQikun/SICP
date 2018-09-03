(load "util.rkt")

;Ben 清空队列后，队列的尾指针仍然指向原先的最后一个节点，但这不影响队列的使用

(define (print-queue q)
  (if (not (empty-queue? q))
      (begin
       (display (front-queue q))
       (if (pair? (front-ptr q))
           (print-queue (cons (cdr (front-ptr q))
                              (cdr q)))))))

(define q (make-queue))
;: (insert-queue! q 'a)
;: (delete-queue! q)
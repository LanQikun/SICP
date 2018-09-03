(load "ch2support.scm")

(define empty-board '())

;将新的一行放在最前面，这样就不需要提取最后一行来操作
(define (adjoin-position new k rest)
  (cons new rest))

(define (safe? k position)
    (safe-helper (car position)
                 (cdr position)
                 1))

(define (safe-helper new rest i)
    (if (null? rest)
        #t
        (let ((cur (car rest)))
          (if (or (= new cur)
                  (= new (+ cur i))
                  (= new (- cur i)))
              #f
              (safe-helper new
                           (cdr rest)
                           (+ i 1))))))

;answer
(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions)
           (safe? k positions))
         (flatmap
          (lambda (rest)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))





            
              
  
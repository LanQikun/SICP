(load "ch2support.scm")
(load "2-36.rkt")

;helper
(define (vec-mul v1 v2)
      (if (null? v1)
          0
          (+ (* (car v1) (car v2))
             (vec-mul (cdr v1) (cdr v2)))))

;solution
;matrix-*-vector
(define (matrix-*-vector m v)
  (define (helper vec)
    (vec-mul vec v))
  ;helper接受一个向量，返回一个数
  (map helper m))

;transpose-矩阵转置
(define (transpose mat)
  (accumulate-n cons nil mat))

;matrix-*-matrix
(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    ;匿名函数接受一个向量，返回一个向量
    (map (lambda (v)
           (define (vector-*-tras-matrix vec mat)
              (matrix-*-vector mat vec))
           (vector-*-tras-matrix v cols))
         m)))

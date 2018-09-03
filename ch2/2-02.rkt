;对线的操作
(define (make-segment point-a point-b)
  (cons point-a point-b))

(define (start-segment line)
  (car line))

(define (end-segment line)
  (cdr line))

;对点的操作
(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

;辅助函数
(define (average a b)
  (/ (+ a b) 2))

(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

;解答
(define (midpoint-segment line)
  (let
      ((begin (start-segment line))
        (end (end-segment line)))
    (let
        ((x (average (x-point begin) (x-point end)))
         (y (average (y-point begin) (y-point end))))
      (make-point x y))))


    
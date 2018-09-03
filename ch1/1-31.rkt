;递归
(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

;迭代
(define (product2 term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))
      

(define (identity a) a)

(define (square x)
  (* x x))

(define (factorial a)
  (product identity 1 inc a))

;begin和end为大于3的奇数
(define (pi begin end)
  (define (term a)
    (/ (* (dec a) (inc a)) (square a)))
  (define (next a)
    (+ a 2))
  (* 4 (product term begin next end)))
  
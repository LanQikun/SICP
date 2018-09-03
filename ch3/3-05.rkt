(load "util.rkt")


(define (random-in-range low high)
  (let ((range (- high low)))
    (+ low (random range))))

(define (in-range p)
  (let ((x (random-in-range x1 x2))
        (y (random-in-range y1 y2)))
    (p x y)))

(define (estimate-integral p x1 y1 x2 y2 trials)
  (let ((l (dis x1 x2))
        (h (dis y1 y2)))
  (* (* l h)
     (monte-carlo trials (in-range p)))))

(define (monte-carlo trials experiment)
  (define (iter trials-remaining trials-passed)
    (cond ((= trials-remaining 0)
           (/ trials-passed trials))
          ((experiment)
           (iter (- trials-remaining 1) (+ trials-passed 1)))
          (else
           (iter (- trials-remaining 1) trials-passed))))
  (iter trials 0))
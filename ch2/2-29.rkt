(define (make-mobile left right)
    (list left right))

(define (make-branch length structure)
    (list length structure))

;a
(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cadr branch))

;b
(define (has-son-mobile? branch)
  (pair? (branch-structure branch)))

(define (branch-weight branch)
    (if (has-son-mobile? branch)              
        (total-weight (branch-structure branch))    
        (branch-structure branch)))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))


;c
(define (branch-moment branch)
  (* (branch-length branch)
     (branch-weight branch)))

(define (branch-balanced? branch)
  (if (not (has-son-mobile? branch))
      #t
      (mobile-balanced? (branch-structure branch))))

(define (mobile-balanced? mobile)
  (let
      ((left (left-branch mobile))
       (right (right-branch mobile)))
    (and
     (branch-balanced? left)
     (branch-balanced? right)
     (= (branch-moment left)
        (branch-moment right)))))


;d
;将right-branch、branch-structure的操作cadr改为cdr

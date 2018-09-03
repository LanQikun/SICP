(load "2-69.rkt")

(define tree (generate-huffman-tree '((A 1) (NA 16) (BOOM 1) (SHA 3) (GET 2) (YIP 9) (JOB 2) (WAH 1))))

(define msg-1 '(Get a job))
(define msg-2 '(Sha na na na na na na na na))
(define msg-3 '(Wah yip yip yip yip yip yip yip yip yip))
(define msg-4 '(Sha boom))

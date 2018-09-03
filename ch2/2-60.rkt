(load "ch2support.scm")


;element-of-set?和intersection-set不变

(define adjoin-set cons)

(define union-set append)

;时间复杂度：element-of-set?和intersection-set会增加，，
;adjoin-set变为O(1)，union-set变为O(n)
;空间复杂度都比之前高
;在需要频繁插入元素的情况下使用这种形式更好


  
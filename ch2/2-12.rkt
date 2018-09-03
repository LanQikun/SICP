(define (make-center-percent center percent)
  (make-center-width center (* center percent)))

(define (percent x)
  (/ (width x) (center x)))

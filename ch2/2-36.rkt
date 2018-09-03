(define (accumulate-n op init seqs)
  (define (firsts sequences)
    (map car sequences))
  (define (rest sequences)
    (map cdr sequences))
  
  (if (null? (car seqs))
      nil
      (cons (accumulate op init (firsts seqs))
            (accumulate-n op init (rest seqs)))))

(define NAMED-HASHES (make-hash-table))

(define (named-hash hash-name)
  (or (hash-ref NAMED-HASHES hash-name)
      (hash-set! NAMED-HASHES hash-name (make-hash-table))))

(define hashes (vector))

(define (list-to-hash l)
  (let ((h (make-hash-table)))
    (while (not (or (null? l) (null? (cdr l))))
	   (hash-set! h (cadr l) (car l))
	   (set! l (cddr l))
	   )
    h))

(define (hash-to-list h)
  (hash-map->list (lambda (k v) (format #f "\"~a=~a:~a\"" k v k)) h))

(define (mkhash l)
  (let ((h (list-to-hash l)))
    (format #t "appending\n")))

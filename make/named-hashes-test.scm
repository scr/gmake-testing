(load "named-hashes.scm")

(define (printhash h)
  (format #t "~a" "{")
  (hash-map->list (lambda (k v) (format #t "~s: ~s," k v)) h)
  (format #t "~a" "}\n"))

(printhash (named-hash "foo"))

(hash-set! (named-hash "foo") "abc" "def")
(hash-set! (named-hash "foo") "123" "one hundred twenty-three")

(printhash (named-hash "foo"))
(printhash (named-hash "food"))

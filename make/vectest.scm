(define v1 `#(1 2 3))
(define v2 `#(4 5 6))

(format #t "v1=~a\n" v1)
(format #t "v2=~a\n" v2)

(define v3 (vector v1 v2))
(format #t "v3=~a\n" v3)

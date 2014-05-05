(load "list-to-hash.scm")

(format #t "hi\n")

(define mylist '("value1" "key1" "v2" "k2"))

(define myhash (list-to-hash mylist))

(format #t "result = ~a\n" (hash-to-list myhash))

(mkhash mylist)
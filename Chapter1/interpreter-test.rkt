#lang sicp
;program to test whether the interpreter is using applicative-order evaluation or normal-order evaluation. Normal-Order returns 0 and applicative-order returns nothing


(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

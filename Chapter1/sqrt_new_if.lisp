#lang sicp
(define new-if predicate then-clause else-clause)
  ;Define a new if-then-else clause.
  (cond (predicate then-clause)
        (else else-clause) 

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))


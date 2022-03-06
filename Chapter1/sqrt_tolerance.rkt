#lang sicp
;using fixed-point method to calculate the square root


(define (fixed-point f start)
  (define tolerance 0 0.00001))

(define (close-enuf? u v)
  (< (abs (- u v)) tolerance))

(define (iter old new)
  (if (close-enuf? old new)
      new
      (iter new (f new)))
(iter start (f start)))
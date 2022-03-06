#lang sicp
;The sine of an angle can be computed by making use of the approximation:
;   sinx = x if x is sufficiently small, which can be resolved in；
;   sinx = 3sin(x/3) - 4sin^2(x/3)
;And that "sufficient small" here we define it when its magnitude is not greater than 0.1 radians

(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

;question: given a angle( such as <sine 12.15>) and try calculate how many times that the procedure p was applied

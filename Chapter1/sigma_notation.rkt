(define (<name> a b)
  (if (> a b)
    0
    (+ (<term> a)
       (<name> (<next> a) b))))
;The presense of such a common pattern is strong evidence that 
;there is a useful abstraction waiting to be brought to the surface.

;Indeed, mathematicians long ago identified the abstraction of summation of a series and invented"sigma notation"
;  b
; ---
; \
; /  f(n)= f(a) + ... + f(b)
; ---
; n=a

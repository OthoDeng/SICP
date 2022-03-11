#lisp
;Computing an exponentiation
;We would like a procedure that take as arguments base(b) and a  positive interger exponent(n) and compute the value of b^n.

;Method => recursion
;b^n = b* b^(n-1)
;b^0 = 1

(define (expt b n)
  (if (= n 0)
     1
     (* b (expt b (- n 1)))))

;Method => linear iteration

(define (expt b n)
     (expt-iter b n 1))

(define (expt-iter b counter product)
     	(if (= counter 0)
        	 product
           (expt-iter b
                      (- counter 1)
                      (* product b))))

;Discussion: To be cintinued......
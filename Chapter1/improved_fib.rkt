;a clever algorithm for computing the Fibonacci numbers in a logarithmic numbers of steps.
;We recall the state of variables a and b in the fib-iter process: 
;		a <= a + b and b <= a		We call this the Transformation T

;Observe that applying T over and over again n times, starting with 1 and 0, which procedures the pair Fib(n+1) and Fib(n)
;In other words, the Fibonacci numbers are produced by applying T^n, the nth power of the transformation T.

;Now consider T to be the special case if p=0 and q =1 in a family of transformation Tpq ,where Tpq transforms the pair (a,b)
;		a <= bq + aq + ap and b <= bp + aq
;If we apply such a transformation Tpq twice, for the condition that is even, like the fast-expt, that is how we run it in a logarithmic number of steps.
;Tpq^2:		a <= (bp + aq)q +(bq + aq + ap)q + (bq + aq + ap)p and b <= (bp + aq)p + (bq + ap + aq)q
;thus: p = p^2 + q^2 and q = 2pq + q^2

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
		((even? count)
		 (fib-iter a
				   b
				   (+ (square p) (square q))
				   (+ (* 2 p q) (square q))
				   (/ count 2)))
		(else (fib-iter (+ (* b q) (* a q) (* a p))
						(+ (* b p) (* a q))
						p
						q
						(- count 1)))))


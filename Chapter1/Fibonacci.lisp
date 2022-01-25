;;Fibonacci's question is a question that represents how tree recursion works.
;;Fib can be defined as the sum of the two previous numbers in the sequence.
;;that is fib(n) = fib(n-1) + fib(n-2)



;;In general, we can define it by the following:
;;          o                       if n = 0 
;;Fib(n) =  1                       if n = 1
;;          Fib(n-1) + Fib(n-2)     otherwise

(define (fib n)
    (cond ((= n 0) 1)
          ((= n 1) 1)
          (else (+ (fib (- n 1)) 
                    (fib (- n 2))))))

;;We can learn from it that more precisely Fib(n) is the closest interger to ϕ^n/√5 (\frac{\phi^{n}}{\sqrt{5}})
;;Where ϕ^2 = ϕ + 1
;;See https://math.stackexchange.com/questions/2717549/prove-that-operatornamefibn-is-the-closest-integer-to-frac-phin-s for detail

;;using iteration:
(define (fib n)
    (fib-iter 1 0 n))

(define (fib-iter a b amount)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))

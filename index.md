## Welcome to SICP

### Structure and Interpretation of Computer Programs




![Qiv4FqGu](https://user-images.githubusercontent.com/68733617/159150622-00832119-edf3-4e8f-9925-97fc0acdfb7d.png)


`gitbook` is still under construction
#### Chapter 1: Building Abstractions with Procedures

The first chapter aims to understand the basic concepts of procedures and how to deal with the data.

In this chapter you will learn:

**1***Combining several simple ideas into one compund one, thus all complex ideas are made*

**2***Brining two ideas together, an setting them by ine another so as to tak a view of them at once, in order to get all its ideas of relations*

**3***To seperate them from all other ideas that accompany them in their real existence(that is the abstraction)*





### Non-daily Updates
**WU Question**
```lisp
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

#lang sicp
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
		(eles (fib-iter (+ (* b q) (* a q) (* a p))
						(+ (* b p) (* a q))
						p
						q
						(- count 1)))))

```

### Support or Contact

You can contact me via [Telegram](https://t.me/Ottodeng)

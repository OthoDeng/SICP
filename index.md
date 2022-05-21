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
#lang sicp

;wu question from GEB
;source from: https://www.zhihu.com/question/20044783/answer/27386915

(define init (list (list 'm 'i)))

;define rule
(define (operator lis)

 (define (rule_1 x)
  (define (end lis)
    (if (null? (cdr lis))
        (car lis)
        (end (cdr lis))))
    (if (eq? (end  x) 'i)
        (append x (list u))))
  (define (rule_2 x)
    (append x (cdr x)))
  (define (rule_3 x)
     (cond ((> (length x) 3)
            (cond ((and (eq? (cadr x) 'i)
                        (eq? (caddr x) 'i)
                        (eq? (cadddr x) 'i))
                   (append (list 'm 'u)
                           (cddddr x)))
                  (else '())))
          (else '())))
  (define (rule_4 x)
     (cond ((or (null? x)
                (null? (cdr x))) x)
            ((and (eq? (car x) 'u)
                  (eq? (cadr x) 'u))
             (rule_4 (cddr x)))
            (else (cons (car x)
                        (rule_4 (cdr x))))))
  (define (erase seq)
     (filter (lambda(x)
               (not (null? x))) seq))

  (erase (list (rule_1 lis) (rule_2 lis) (rule_3 lis) (rule_4 lis)))
)

;define dictionary
(define dictionary init)
(define (in? value lis)
  (or (equal? value (car lis))
    (and (not (null? (cdr lis)))
         (in? value (cdr lis)))))

;define operator
(define (expand seqs)
  (define (erase_repeat lis)
    (cond ((null? lis)
           '())
          (else
           (cons (car lis)
                 (filter (lambda(x) (not (equal? x (car lis))))
                         (erase_repeat (cdr lis)))))))
  (define (pre-expand lis)
  (if (null? lis)
      '()
      (append (operator (car lis))
              (pre-expand (cdr lis)))))
  (define result (filter
                         (lambda(x) (not (in? x dictionary)))
                         (erase_repeat (pre-expand seqs))))
  (begin (set!  dictionary (append dictionary result))
    result)
  )

;define examine
(define object (list 'm 'u))

(define (f a)
  (if (in? object a)
      'yeah
      (f (expand a))))
(f init)

;it turns out to be stackoverflowed
```

### Support or Contact

You can contact me via [Telegram](https://t.me/Ottodeng)

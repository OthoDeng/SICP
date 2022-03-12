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

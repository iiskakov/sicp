#lang racket
(define (square x) (* x x))
(define (sum-of-squares a b) (+ (square b) (square a)))
(define (two-largest a b c) (cond ((and (> a b) (> b c)) (sum-of-squares a b))
                                    ((and (> a b) (> c b)) (sum-of-squares a c))
                                    (else (sum-of-squares b c))))
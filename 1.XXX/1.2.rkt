#lang racket
(define (square x) (* x x))
(define (sum-of-squares a b) (+ (square b) (square a)))
(define (two-largest a b c) (cond ((and (< a b) (< a c)) (sum-of-squares b c))
                                  ((and (< c b) (< c a)) (sum-of-squares a b))
                                  ((and (< b a) (< b a)) (sum-of-squares a c))
                                   (else (sum-of-squares a b))))
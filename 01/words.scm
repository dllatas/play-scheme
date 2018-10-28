(define (plural-old wd)
        (word wd 's)
)

(define (plural-2 wd)
    (if (equal? (last wd) 'y)
        (word (bl wd) 'ies)
        (word wd 's)
    )
)

(define (plural wd)
    (cond 
        (
            (equal? (last wd) 'y) (plural (bl wd))
        )
        (
            (vowel? (last wd)) (word wd 'ys)
        )
        (
            word (bl wd) 'ies
        )
        (
            word wd 's
        )
    )
)

;;; Both conditionals are the same syntactic sugar

(define (buzz n)
    (cond 
        ((equal? (remainder n 7) 0) 'buzz)
        ((member? 7 n) 'buzz)
        (else n)
    )
)

(define (pigl wd)
    (if (pl-done? wd)
        (word wd 'ay)
        (pigl (word (bf wd) (first wd)))
    )
)

(define (pl-done? wd)
    (vowel? (first wd))
)

(define (vowel? letter)
    (member? letter '(a e i o u))
)
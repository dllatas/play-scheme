(define (where-are-you-from-cond area-code) 
	(cond 
		((= area-code 415) (word 'san 'francisco))
		((= area-code 510) 'berkeley)
		(else 'where-you-from)
	)
)

(define (where-are-you-from-if area-code) 
		(if (= area-code 415) 
		    (word 'san 'francisco)
		    (if (= area-code 510) 
		        'berkeley 
			'where-you-from
		    )
		)
)

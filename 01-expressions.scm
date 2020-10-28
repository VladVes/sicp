(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;get sum of squares of two biggest numbers
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (get-smallest x y z) 
  (cond ((and (< x y) (< x z)) x)
	((and (< y x) (< y z)) y)
	(else z)))
(define (sum-of-squares-of-two-biggest x y z)
  (cond ((= (get-smallest x y z) x) (sum-of-squares y z))
	((= (get-smallest x y z) y) (sum-of-squares x z))
	(else (sum-of-squares x y))))
(sum-of-squares-of-two-biggest 3 2 1)
;should return 13
(sum-of-squares-of-two-biggest 5 3 4)
;should return 41

;operators can be a compound expression
(define (a-plus-abs-b a b)
	((if (> b 1) + -) a b))
(a-plus-abs-b 10 5)
;should return 15
(a-plus-abs-b 10 1)
;should return 9 

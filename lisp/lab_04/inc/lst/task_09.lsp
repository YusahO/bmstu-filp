(defun mul-by-num (num lst)
    (cond (
              (null lst)
              lst
          )
          (
              (numberp (car lst))
              (cons (* num (car lst)) (cdr lst))
          )
          (
              T
              (cons (car lst)
                    (mul-by-num num (cdr lst)))
          )
    ))

;; (mul-by-num 8 '(1 2 3)) -> (8 2 3)
;; (mul-by-num 8 '(a 2 3)) -> (a 16 3)
;; (mul-by-num 8 '(a 2 a)) -> (a 16 a)
;; (mul-by-num 8 Nil) -> NIL
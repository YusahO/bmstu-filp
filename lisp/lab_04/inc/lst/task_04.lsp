(defun without-last-1 (lst)
    (reverse (cdr (reverse lst))))

(defun without-last-2 (lst)
    (cond ((null (cdr lst)) Nil)
          (T (cons (car lst) (without-last-2 (cdr lst))))))

;; (without-last-1 '(a b c)) -> (A B)
;; (without-last-2 '(a b c)) -> (A B)
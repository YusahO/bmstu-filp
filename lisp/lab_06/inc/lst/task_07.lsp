(defun recnth-impl (n lst)
    (cond ((null lst) Nil)
          ((= n 0) (car lst))
          ((> n 0) (recnth-impl (- n 1) (cdr lst)))
))
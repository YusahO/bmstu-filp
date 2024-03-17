(defun f (lst)
    (mapcar #'(lambda (x) (cond ((numberp x) (- x 10))
                                (t x))) lst))

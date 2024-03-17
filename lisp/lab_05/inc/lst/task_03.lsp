(defun times-all-num (num lst)
    (mapcar #'(lambda (x) (* num x)) lst))

(defun times-mixed (num lst)
    (mapcar #'(lambda (x) (cond ((numberp x) (* num x))
                                (t x))) lst))

(defun my-reverse (lst &optional (res Nil))
    (cond ((null lst) res)
          (t (my-reverse (cdr lst) 
                         (cons (car lst) res)))))
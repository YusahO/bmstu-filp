(defun s (lst)
  (cond
    ((null lst) 0)
    ((atom lst) 1)
    (t (+ (s (car lst)) 
          (s (cdr lst))))))
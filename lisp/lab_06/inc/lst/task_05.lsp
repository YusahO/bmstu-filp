(defun select-between (lst a b)
    (cond ((null lst) Nil)
          (T
              (cond ((< a (car lst) b)
                     (cons (car lst) 
                           (select-between (cdr lst) a b)))
                    (T (select-between (cdr lst) a b))
          ))
))
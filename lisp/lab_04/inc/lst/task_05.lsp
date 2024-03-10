(defun without-last (lst)
    (cond ((null (cdr lst)) Nil)
          (T (cons (car lst) (without-last (cdr lst))))))

(defun swap-first-last (lst)
    (setf head (without-last lst))
    (append (cons (nth (- (length lst) 1) lst) Nil)
            (append (cdr head) 
                    (cons (nth 0 head) Nil))))

;; (swap-first-last '(a b c d)) -> (D B C A)
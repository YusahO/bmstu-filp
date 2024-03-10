(defun get-last-1 (lst)
    (nth (- (length lst) 1) lst))

(defun get-last-2 (lst)
    (cond ((null (cdr lst)) (car lst))
          (T (get-last-2 (cdr lst)))))

(defun get-last-3 (lst)
    (car (last lst)))

;; (get-last-1 '(a b (c))) -> (C)
;; (get-last-2 '(a b (c))) -> (C)
;; (get-last-3 '(a b (c))) -> (C)
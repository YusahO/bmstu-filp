(defun ordered (x y)
    (if (< x y)
        (cons x
              (cons y Nil))
        (cons y
              (cons x Nil))))

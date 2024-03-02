(defun between-if (x y z)
    (if (<= x y)
        (>= x z)
        (<= x z)))

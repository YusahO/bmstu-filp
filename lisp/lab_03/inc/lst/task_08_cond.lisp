(defun between-cond (x y z)
    (cond ((<= x y) (<= z x))
          ((<= x z) (<= y x))))

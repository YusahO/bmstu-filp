;; пункт a)
(defun rec-add-a (lst)
    (if (null lst)
        0
        (+
            (if (numberp (car lst))
                (car lst)
                0)
            (rec-add-a (cdr lst))
        )
    ))

;; пункт b)
(defun rec-add-b (lst)
  (if (null lst)
      0
      (+
          (if (numberp (car lst))
              (car lst)
              (rec-add-b (car lst)))
          (rec-add-b (cdr lst))
      )
  ))
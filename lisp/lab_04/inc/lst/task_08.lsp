(defun country-by-capital (table capital)
    (cond (
              (eq capital (cdr (car table)))
              (car (car table))
          )
          (
              T 
              (country-by-capital (cdr table) capital)
          )
    ))

(defun capital-by-country (table country)
    (cond (
              (eq country (car (car table)))
              (cdr (car table))
          )
          (
              T 
              (capital-by-country (cdr table) country)
          )
    ))
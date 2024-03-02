(defun how_alike_if (x y)
    (if (= x y)
        'the_same
        (if (equal x y)
            'the_same
            (if (oddp x)
                (if (oddp y)
                    'both_odd
                    'difference)
                (if (evenp y)
                    'both_even
                    'difference)))))

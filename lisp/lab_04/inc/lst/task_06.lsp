(defun roll-dice ()
    (setf *random-state* (make-random-state t))
    (+ (random 6) 1))

(defun is-abs-win (result)
    (or (= result 7)
        (= result 11)))

(defun should-reroll (d1 d2)
    (and (= d1 d2)
         (or (= d1 6)
             (= d1 1))))

(defun make-a-move (iplayer)
    (let (
             (dice1 (roll-dice))
             (dice2 (roll-dice))
         )

    (print (list 'Игрок iplayer 'бросает 'кости dice1 dice2))
    (cond (
              (should-reroll dice1 dice2)
              (and
                  (print (list 'Игрок iplayer 'перебрасывает 'кости))
                  (make-a-move iplayer)
              )
          )
          (T 
              (and
                  (print (list 'Выпало dice1 dice2 'очков))
                  (+ dice1 dice2)
              )
          ))
    ))

(defun play-game ()
    (let (
             (p1 (make-a-move 1))
             (p2 (make-a-move 2))
         )
    (cond (
              (is-abs-win p1)
              (print (list 'Игрок 1 'выиграл 'абсолютно))
          )
          (
              (is-abs-win p2)
              (print (list 'Игрок 2 'выиграл 'абсолютно))
          )
          (
              (> p1 p2)
              (print (list 'Игрок 1 'выиграл))
          )
          (
              (< p1 p2)
              (print (list 'Игрок 2 'выиграл))
          )
          (
              (= p1 p2)
              (print 'Ничья)
          )
    )))
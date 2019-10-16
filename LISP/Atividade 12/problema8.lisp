(defun fatia(n m lista)
    (if (null lista)
        0
        (if (/= n 0)
            (fatia (- n 1) (- m 1) (cdr lista))
            (if (/= m 0)
                (cons (car lista) (fatia n (- m 1)))
                
            )
        )
    )
)



(defun main()
    (setq lista '(1 2 3 4 5 2))
    (setq n 2)
    (setq m 3)
    (write-line(write-to-string (fatia n m lista)))
)

(main)
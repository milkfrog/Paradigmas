(defun menor(lista)
    (if (null lista)
        0
        (if (null (cdr lista))
            (car lista)
            (if (> (car lista) (menor (cdr lista)) )
                (menor (cdr lista))
                (car lista)
            )
        )
    )
)

(defun maior(lista)
    (if (null lista)
        0
        (if (null (cdr lista))
            (car lista)
            (if (< (car lista) (maior (cdr lista)) )
                (maior (cdr lista))
                (car lista)
            )
        )
    )
)

(defun diferencaMaiorMenor(lista)
    (if (null lista)
        0
        (- (maior lista) (menor lista))
    )
)



(defun main()
    (setq lista '(1 2 3 4 5))
    (write-line(write-to-string (diferencaMaiorMenor lista)))
)

(main)
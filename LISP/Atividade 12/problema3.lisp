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

(defun main()
    (setq lista '(1 2 3 4 5))
    (write-line(write-to-string (menor lista)))
)

(main)
(defun soma(lista)
    (if (null lista)
        0
        (+ (car lista) (soma (cdr lista)))
    )
)

(defun main()
    (setq lista '(1 2 3 4 5))
    (write-line(write-to-string (soma lista)))
)

(main)
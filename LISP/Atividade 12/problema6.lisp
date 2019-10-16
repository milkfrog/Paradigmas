(defun ocorrencias(a lista)
    (if (null lista)
        0
        (if (=  a (car lista))
            (+ 1 (ocorrencias a (cdr lista)))
            (ocorrencias a (cdr lista))
        )
    )
)



(defun main()
    (setq lista '(1 2 3 4 5 2))
    (write-line(write-to-string (ocorrencias 2 lista)))
)

(main)
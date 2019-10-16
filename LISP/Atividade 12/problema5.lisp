(defun busca(a lista)
    (if (null lista)
        nil
        (if (=  a (car lista))
            t
            (busca a (cdr lista))
        )
    )
)


(defun main()
    (setq lista '(1 2 3 4 5))
    (write-line(write-to-string (busca 0 lista)))
)

(main)
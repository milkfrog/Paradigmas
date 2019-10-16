(defun enesimo(n lista)
    (if (null lista)
        0
        (if (= n 0)
            (car lista)
            (enesimo (- n 1) (cdr lista))
        )
    )
)



(defun main()
    (setq lista '(1 2 3 4 5 2))
    (write-line(write-to-string (enesimo 4 lista)))
)

(main)
(defun soma(lista)
    (if (null lista)
        0
        (+ (car lista) (soma (cdr lista)))
    )
)

(defun comprimento (lista)
    (if (null lista) ;testa se lista é vazia
      0
      (+ 1 (comprimento (cdr lista))) ;cdr retorna cauda
    )
)

(defun media(lista)
    (/ (soma lista) (comprimento lista))
)
(defun main()
    (setq lista '(1 2 3 4 5))
    (write-line(write-to-string (media lista)))
)

(main)
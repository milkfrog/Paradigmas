(defun media(n1 n2 n3)
    (if (< (/ (+ n1 n2 n3) 3) 6)
        "Reprovado"
        "Aprovado"
    )
)


(defun main()
    (setq n1 (read))
    (setq n2 (read))
    (setq n3 (read))
    (write-line(write-to-string (media n1 n2 n3)))
)

(main)
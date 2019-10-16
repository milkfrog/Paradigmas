(defun mdc(a b)
    (cond
        ((= a 0) b)
        ((> a 0) (mdc (mod b a) a) )
    )
)

(defun coprimo(x)
    (if (= x 1)
        "Sim"
        "Nao"
    )
)




(defun main()
    (setq a (read))
    (setq b (read))
    (write-line(write-to-string (coprimo (mdc a b) )))
)

(main)
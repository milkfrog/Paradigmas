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

(defun totiente(a b)
    (if (= a 1)
        0
        (+ (coprimo (mdc (- a 1) b) ) (totiente (- a 1) b) )
    )
)



(defun main()
    (setq a (read))
    (setq b (read))
    (write-line(write-to-string (totiente a b )))
)

(main)
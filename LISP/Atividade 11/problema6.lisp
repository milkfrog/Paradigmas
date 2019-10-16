(defun absoluto(x)
    (if (< x 0)
        (- 0 x)
        (x)
    )
)

(defun constroi(a b c)
    (if (and (< (absoluto (- b c)) a)  (< a (+ b c))  (< (absoluto (- a c)) b)  (< b (+ a c))  (< (absoluto (- a b)) c)  (< c (+ a b)))
        "Possivel construir um triangulo"
        "Nao eh possivel construir um triangulo"
    )
)



(defun main()
    (setq a (read))
    (setq b (read))
    (setq c (read))
    (write-line(write-to-string (constroi a b c)))
)

(main)
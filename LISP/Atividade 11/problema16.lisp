(defun divisivel(a b)
    (if ( = (mod a b) 0)
        "Divisivel"
        "Nao Divisivel"
    )
)

(defun main()
    (setq a (read))
    (setq b (read))
    (write-line(write-to-string (divisivel a b )))
)

(main)
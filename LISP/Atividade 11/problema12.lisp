(defun mdc(a b)
    (cond
        ((= a 0) b)
        ((> a 0) (mdc (mod b a) a) )
    )
)

(defun mdc3(a b c)
    (if (and (>= a c) (>= b c))
        (mdc (mdc a b) c)
        (if (and (>= b c) (>= c a))
            (mdc (mdc b c) a)
            (mdc (mdc c a) b)
        )
    )
)


(defun main()
    (setq a (read))
    (setq b (read))
    (setq c (read))
    (write-line(write-to-string (mdc3 a b c)))
)

(main)
(defun mdc(a b)
    (cond
        ((= a 0) b)
        ((> a 0) (mdc (mod b a) a) )
    )
)


(defun main()
    (setq a (read))
    (setq b (read))
    (write-line(write-to-string (mdc a b)))
)

(main)
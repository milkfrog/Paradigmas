(defun mdc(a b)
    (cond
        ((= a 0) b)
        ((> a 0) (mdc (mod b a) a) )
    )
)


(defun mmc(a b)
    (cond
        ((= a 0) 0)
        ((= b 0) 0)
        ((= a b) a)
        ((/ (* a b) (mdc a b) ))
    )
)



(defun main()
    (setq a (read))
    (setq b (read))
    (write-line(write-to-string (mmc a b )))
)

(main)
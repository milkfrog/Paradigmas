(defun xor(bool1 bool2)
    (and (or bool1 bool2) (or (not bool1) (not bool2)))
)


(defun main()
    (setq bool1 (read))
    (setq bool2 (read))
    (write-line(write-to-string (xor bool1 bool2)))
)

(main)
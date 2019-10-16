(defun areaTriangulo(base altura)
    (/ (* base altura) 2)
)

(defun main()
    (setq base (read))
    (setq altura (read))
    (write-line(write-to-string (areaTriangulo base altura)))
)

(main)
(defun fib(x)
    (cond
        ((= x 0) 0)
        ((= x 1) 1)
        ((> x 1) (+ (fib (- x 1))  (fib(- x 2))))
    )
)



(defun main()
    (setq a (read))
    (write-line(write-to-string (fib a)))
)

(main)
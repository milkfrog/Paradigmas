fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = (fib(n-1) + fib(n-2))

main = do
	putStrLn ("digite o n-esimo numero de fib: ")
	nStr <- getLine
	let n = (read nStr :: Int)
	print (fib n)
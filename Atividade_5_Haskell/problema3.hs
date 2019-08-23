menor :: [Int] -> Int
menor [a] = a
menor (a:b)
	| (a > menor b) = menor b
	| otherwise = a


main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	print(menor x)
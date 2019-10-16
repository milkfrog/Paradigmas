soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma(b)




main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	print(soma x)
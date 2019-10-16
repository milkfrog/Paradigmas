diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor [] = 0
diferencaMaiorMenor lista = ((maior lista) - (menor lista))


maior :: [Int] -> Int
maior [a] = a
maior (a:b)
	| (a < menor b) = menor b
	| otherwise = a

menor :: [Int] -> Int
menor [a] = a
menor (a:b)
	| (a > menor b) = menor b
	| otherwise = a

main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	print(diferencaMaiorMenor x)
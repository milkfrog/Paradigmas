ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias (a:b) y
	| (a == y) = 1 + (ocorrencias b y)
	| otherwise = ocorrencias b y




main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	putStrLn("Digite o valor do item a ser verificado: ")
	yStr <- getLine
	let y = (read yStr :: Int)
	print(ocorrencias x y)
busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (a:b) y
	| (a == y) = True
	| otherwise = busca b y

main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	putStrLn("Digite o valor do item a ser verificado: ")
	yStr <- getLine
	let y = (read yStr :: Int)
	print(busca x y)
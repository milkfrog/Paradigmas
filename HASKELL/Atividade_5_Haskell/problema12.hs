apagar :: Int -> [t] -> [t]
apagar _ [] = []
apagar x (a:b)
	| (x > 0) = apagar (x-1) b
	| otherwise = a : apagar x b



main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	putStrLn("Digite um inteiro: ")
	yStr <- getLine
	let y = (read yStr :: Int)
	print(apagar y x)
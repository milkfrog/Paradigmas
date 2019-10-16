inverte :: [t] -> [t]
inverte [] = []
inverte (a:b) = inverte(b) ++ [a]



main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	print(inverte x)
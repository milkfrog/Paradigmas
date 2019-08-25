filtrar :: (t -> Bool) -> [t] -> [t]
filtrar f lista = [x | x <- lista, f x]

funcTeste :: Int -> Bool
funcTeste t
	| (t >= 3) = True
	| otherwise = False

main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	print(filtrar funcTeste x)
mapear :: (t -> y) -> [t] -> [y]
mapear f [] = []
mapear f (a:b) = [f a] ++ (mapear f b)


funcTeste :: Int -> Int
funcTeste a = a+2

main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	print(mapear funcTeste x)
primeiros :: Int -> [t] -> [t]
primeiros 0 _ = []
primeiros x (a:b) = [a] ++ primeiros (x-1) b

main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	putStrLn("Digite um inteiro: ")
	yStr <- getLine
	let y = (read yStr :: Int)
	print(primeiros y x)
verificaPrimo :: Int -> Bool
verificaPrimo 1 = False
verificaPrimo 2 = True
verificaPrimo n 
	| (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False
	| otherwise = True

main = do
	putStrLn("Digite o numero: ")
	xStr <- getLine
	let x = (read xStr :: Int)
	print(verificaPrimo x)
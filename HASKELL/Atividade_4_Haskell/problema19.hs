verificaPrimo :: Int -> Bool
verificaPrimo 1 = False
verificaPrimo 2 = True
verificaPrimo n 
	| (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False
	| otherwise = True

pegaPrimo :: Int -> Int -> Int
pegaPrimo x var =
	if (verificaPrimo(x) && var-2 >= x) then
		x
	else
		pegaPrimo (x-1) var

main = do
	putStrLn("Digite um numero Inteiro e par >= 4: ")
	xStr <- getLine
	let x = (read xStr :: Int)
	let var = (read xStr :: Int)
	print(pegaPrimo x var)
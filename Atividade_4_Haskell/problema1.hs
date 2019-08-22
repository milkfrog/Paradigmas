main = do
	putStrLn "Digite o valor de X: "
	xStr <- getLine
	let x = (read xStr :: Float)
	putStrLn "Digite o valor de y: "
	yStr <- getLine
	let y = (read yStr :: Float)
	print (x**y)
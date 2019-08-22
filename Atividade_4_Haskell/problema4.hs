portaXor :: Bool -> Bool -> Bool
portaXor a b = ((a || b) && (not a || not b))

main = do
	putStrLn ("digite o primeiro booleano: ")
	booleano1Str <- getLine
	let booleano1 = (read booleano1Str :: Bool)
	putStrLn ("digite o segundo booleano: ")
	booleano2Str <- getLine
	let booleano2 = (read booleano2Str :: Bool)
	print (portaXor booleano1 booleano2)
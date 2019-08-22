verificaDivisivel :: Float -> Float -> String
verificaDivisivel _ 0 = "Nao"
verificaDivisivel 0 _ = "Nao"
verificaDivisivel a b 
	| ((a `mod` b) == 0) = "Sim"
	| otherwise = "Nao"

main = do
	putStrLn("Digite o primeiro numero: ")
	xStr <- getLine
	let x = (read xStr :: Float)
	putStrLn("Digite o segundo numero: ")
	yStr <- getLine
	let y = (read yStr :: Float)
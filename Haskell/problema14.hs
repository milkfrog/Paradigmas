mdc :: Int -> Int -> Int
mdc m n
	| (m == 0 ) = n
	| (m > 0) = mdc (n `mod` m) m

verificaCoprimo :: Int -> String
verificaCoprimo 1 = "Sim"
verificaCoprimo _ = "Nao"

main = do
	putStrLn("Digite o primeiro numero: ")
	xStr <- getLine
	let x = (read xStr :: Int)
	putStrLn("Digite o segundo numero: ")
	yStr <- getLine
	let y = (read yStr :: Int)
	print(verificaCoprimo (mdc x y))
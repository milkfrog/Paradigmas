mdc :: Int -> Int -> Int
mdc m n
	| (m == 0 ) = n
	| (m > 0) = mdc (n `mod` m) m

verificaCoprimo :: Int -> Int
verificaCoprimo 1 = 1
verificaCoprimo _ = 0

totiente :: Int -> Int -> Int
totiente 1 _ = 0
totiente n var = verificaCoprimo(mdc (n-1) var) + (totiente (n-1) var)




main = do
	putStrLn("Digite o primeiro numero: ")
	nStr <- getLine
	let n = (read nStr :: Int)
	let var = (read nStr :: Int)
	print(totiente n var)
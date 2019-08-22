mdc :: Int -> Int -> Int
mdc m n
	| (m == 0) = n
	| (m > 0) = mdc (n `mod` m) m

main = do
	putStrLn("Digite o x: ")
	xStr <- getLine
	let x = (read xStr :: Int)
	putStrLn("Digite o y: ")
	yStr <- getLine
	let y = (read yStr :: Int)
	print(mdc x y)

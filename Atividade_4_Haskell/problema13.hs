mdc :: Int -> Int -> Int
mdc m n
	| (m == 0 ) = n
	| (m > 0) = mdc (n `mod` m) m

mmc :: Int -> Int -> Int
mmc a b 
	| (a == 0) = 0
	| (b == 0) = 0
	| (a == b) = a
	| otherwise = div (a * b) (mdc a b)

main = do
	putStrLn("Digite o primeiro numero: ")
	xStr <- getLine
	let x = (read xStr :: Int)
	putStrLn("Digite o segundo numero: ")
	yStr <- getLine
	let y = (read yStr :: Int)
	print(mmc x y)
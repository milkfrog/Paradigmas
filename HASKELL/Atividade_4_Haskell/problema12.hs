mdc3 :: Int -> Int -> Int -> Int
mdc3 a b c = 
	if a >= c && b >= c then
		(mdc (mdc a b) c)
	else if b >= c && c >= a then
		(mdc (mdc b c) a)
	else
		(mdc (mdc c a) b)

mdc :: Int -> Int -> Int
mdc m n
	| (m == 0 ) = n
	| (m > 0) = mdc (n `mod` m) m


main = do
	putStrLn("digite o numero x: ")
	xStr <- getLine
	let x = (read xStr :: Int)
	putStrLn("digite o numero y: ")
	yStr <- getLine
	let y = (read yStr :: Int)
	putStrLn("digite o numero z: ")
	zStr <- getLine
	let z = (read zStr :: Int)
	print(mdc3 x y z)
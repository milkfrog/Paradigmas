maior :: Float -> Float -> Float -> Float
maior a b c =
	if ((a >= b) && (a >= c)) then
		a
	else if ((b >= a) && (b >= c)) then
		b
	else
		c

main = do
	putStrLn("Digite a: ")
	aStr <- getLine
	let x = (read aStr :: Float)
	putStrLn("Digite b: ")
	bStr <- getLine
	let y = (read bStr :: Float)
	putStrLn("Digite c: ")
	cStr <- getLine
	let z = (read cStr :: Float)
	print(maior x y z)
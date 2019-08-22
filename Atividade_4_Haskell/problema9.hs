absoluto :: Float -> Float
absoluto 0 = 0
absoluto x =
	if x >= 0 then
		x
	else
		-x

distancias :: Float -> Float -> Float -> Float -> Float -> Float -> String
distancias x1 y1 z1 x2 y2 z2 = "Distancia entre x1 e x2 = "++show(difX)++"\nDistancia entre y1 e y2 = "++show(difY)++"\nDistancia entre z1 e z2 = "++show(difZ)
	where
		difX = absoluto(x1 - x2)
		difY = absoluto(y1 - y2)
		difZ = absoluto(z1 - z2)

main = do
	putStrLn("Digite x1: ")
	x1Str <- getLine
	let x1 = (read x1Str :: Float)
	putStrLn("Digite y1: ")
	y1Str <- getLine
	let y1 = (read y1Str :: Float)
	putStrLn("Digite z1: ")
	z1Str <- getLine
	let z1 = (read z1Str :: Float)
	putStrLn("Digite x2: ")
	x2Str <- getLine
	let x2 = (read x2Str :: Float)
	putStrLn("Digite y2: ")
	y2Str <- getLine
	let y2 = (read y2Str :: Float)
	putStrLn("Digite z2: ")
	z2Str <- getLine
	let z2 = (read z2Str :: Float)
	putStrLn(distancias x1 y1 z1 x2 y2 z2)

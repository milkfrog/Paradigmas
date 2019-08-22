calAreaTriangulo :: Float -> Float -> Float
calAreaTriangulo 0 _ = 0
calAreaTriangulo _ 0 = 0
calAreaTriangulo base altura = (base * altura) / 2

main = do
	putStrLn ("Digite o valor da base: ")
	baseStr <- getLine
	let base = (read baseStr :: Float)
	putStrLn ("Digite o valor da altura: ")
	alturaStr <- getLine
	let altura = (read alturaStr :: Float)
	print(calAreaTriangulo base altura)
calcMedia :: Float -> Float -> Float -> String
calcMedia a b c = 
	if (a + b + c)/3 >= 6 then
		"Aprovado"
	else
		"Reprovado"

main = do
	putStrLn("digite a primeira nota: ")
	aStr <- getLine
	let a = (read aStr :: Float)
	putStrLn("digite a segunda nota: ")
	bStr <- getLine
	let b = (read bStr :: Float)
	putStrLn("digite a terceira nota: ")
	cStr <- getLine
	let c = (read cStr :: Float)
	print(calcMedia a b c)

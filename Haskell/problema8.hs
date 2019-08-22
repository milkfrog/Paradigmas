bhaskara :: Float -> Float -> Float -> String
bhaskara 0 _ _ = "Impossivel"
bhaskara a b c =
	if (b*b - 4*a*c) < 0 then
		"Complexo"
	else
		"X1 = "++show(x1)++" X2 = "++show(x2)
			where 
				x1 = ((-b + (b*b - 4*a*c)**(1/2))/(2*a))
				x2 = ((-b - (b*b - 4*a*c)**(1/2))/(2*a))

main = do
	putStrLn ("Digite a: ")
	aStr <- getLine
	let a = (read aStr :: Float)
	putStrLn ("Digite b: ")
	bStr <- getLine
	let b = (read bStr :: Float)
	putStrLn ("Digite c: ")
	cStr <- getLine
	let c = (read cStr :: Float)
	print(bhaskara a b c)
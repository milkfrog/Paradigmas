operar :: String -> Float -> Float -> String
operar ope x y 
	| ((ope /= "+") && (ope /= "-") && (ope /= "*") && (ope /= "/")) = "Operador invalido"
	| (ope == "+") = show(x)++" + "++show(y)++" = "++show(x+y)
	| (ope == "-") = show(x)++" - "++show(y)++" = "++show(x-y)
	| (ope == "*") = show(x)++" * "++show(y)++" = "++show(x*y)
	| (ope == "/") = show(x)++" / "++show(y)++" = "++show(x/y)

main = do
	putStrLn("Digite o primeiro Operador (+, -, * ou /): ")
	ope <- getLine
	putStrLn("Digite o X: ")
	xStr <- getLine
	let x = (read xStr :: Float)
	putStrLn("Digite o Y: ")
	yStr <- getLine
	let y = (read yStr :: Float)
	putStrLn(operar ope x y)
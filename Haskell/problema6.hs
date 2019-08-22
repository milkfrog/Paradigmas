absoluto :: Int -> Int
absoluto 0 = 0
absoluto x =
	if x >= 0 then
		x
	else
		-x

verificaTri :: Int -> Int -> Int -> String
verificaTri 0 _ _ = "Nao"
verificaTri _ 0 _ = "Nao"
verificaTri _ _ 0 = "Nao"
verificaTri a b c = 
	if ((absoluto(b-c) < a) && (a < b+c)) then
		"Sim"
	else if ((absoluto(a-c) < b) && (b < a+c)) then
		"Sim"
	else if ((absoluto(a-b) < c) && (c < a+b)) then
		"Sim"
	else
		"Nao"


main = do
	putStrLn ("Digite o primeiro inteiro: ")
	aStr <- getLine
	let a = (read aStr :: Int)
	putStrLn ("Digite o segundo inteiro: ")
	bStr <- getLine
	let b = (read bStr :: Int)
	putStrLn ("Digite o terceiro inteiro: ")
	cStr <- getLine
	let c = (read cStr :: Int)
	print(verificaTri a b c)

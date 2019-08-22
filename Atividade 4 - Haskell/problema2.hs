absoluto :: Float -> Float
absoluto 0 = 0
absoluto x =
	if x >= 0 then
		x
	else
		-x

main = do
	putStrLn ("Digite um número X: ")
	xStr <- getLine
	let x = (read xStr :: Float)
	print (absoluto x)
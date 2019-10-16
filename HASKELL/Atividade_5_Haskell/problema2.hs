media :: [Int] -> Float
media [] = 0
media lista = (fromIntegral(soma lista) / fromIntegral(tamanhoLista lista))


soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma(b)

tamanhoLista :: [Int] -> Int
tamanhoLista [] = 0
tamanhoLista (a:b) = 1 + tamanhoLista(b)

main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	print(media x)
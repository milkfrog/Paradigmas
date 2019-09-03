existe :: Int -> [Int] -> Bool
existe _ [] = False
existe x (a:b)
	| (x == a) = True
	| otherwise = existe x b

checaLista :: [Int] -> [Int] -> Bool
checaLista [] _ = True
checaLista (a:b) x = (existe a x) && (checaLista b x)

mesmosElementos :: [Int] -> [Int] -> Bool
mesmosElementos x y = (checaLista x y) && (checaLista y x)

main = do
	print(mesmosElementos [1, 2, 3, 4, 5, 6, 7] [7, 7, 7, 6, 1, 1, 1, 2, 3, 4, 5, 6, 7, 6, 4, 3])
apagarEnquanto :: (t -> Bool) -> [t] -> [t]
apagarEnquanto _ [] = []
apagarEnquanto f (a:b)
	| (f a) = apagarEnquanto f b
	| otherwise = [a] ++ b

funcTeste :: Int -> Bool
funcTeste x
	| ((mod x 2) /= 0) = True
	| otherwise = False

main = do
	putStrLn("Digite uma lista no estilo [1, 2, 3, 4, 5]: ")
	xStr <- getLine
	let x = (read xStr :: [Int])
	print(apagarEnquanto funcTeste x)
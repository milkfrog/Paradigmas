data Ponto = P2D Int Int
data Retangulo = Ret Ponto Ponto

p1 :: Ponto
p1 = P2D 5 10

p2 :: Ponto
p2 = P2D 10 5

p3 :: Ponto
p3 = P2D 7 7

p4 :: Ponto
p4 = P2D 11 11

p6 :: Ponto
p6 = P2D 8 8

p7 :: Ponto
p7 = P2D 20 20

retangulo :: Retangulo
retangulo = Ret p1 p2

dentro:: Retangulo -> [Ponto] -> [[Ponto]]
dentro _ [] = [[]]
dentro ret (a:b)
	| (esta ret a) = ([a],[]) ++ dentro ret b
	| otherwise = ([],[a]) ++ dentro ret b


esta :: Retangulo -> Ponto -> Bool
esta (Ret (P2D a b) (P2D c d)) (P2D e f)
	| (e >= a && e <= c && f <= b && f >= d) = True
	| otherwise = False

pegaDentro :: Ponto -> Ponto -> [[Int]]
pegaDentro (P2D a b) (P2D c d) = [[a] ++ [b]]

main = do
	putStrLn(show(pegaDentro p1 p2))
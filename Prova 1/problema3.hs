data Arvore = Null | No Int Arvore Arvore

-- parte A

minhaArvore :: Arvore
minhaArvore = No 3 (No 32 (No 12 Null (No 7 Null Null)) (No 2 Null Null)) (No 5 (No 55 Null Null) (No 1 Null Null))

minhaArvoreC :: Arvore
minhaArvoreC = No 3 (No 3 (No 3 Null (No 7 Null Null)) (No 7 Null Null)) (No 3 (No 5 Null Null) (No 1 Null Null))


contador :: Arvore -> Int -> Int -> [Int]
contador Null _ _ = [-1]
contador (No n esq dir) h x
	| (n == h) = [x+1] ++ contador esq h (x+1) ++ contador dir h (x+1)
	| otherwise = contador esq h (x+1) ++ contador dir h (x+1)

maior :: [Int] -> Int
maior [] = -1
maior (a:b)
	| (a > (maior b)) = a
	| otherwise = maior b 

maiorProfundidadeElemento :: Arvore -> Int -> Int
maiorProfundidadeElemento arvore n = maior(contador arvore n (-1))

-- parte B

folhasPrimos :: Arvore -> [Int]
folhasPrimos arvore = filter primo (folhas(arvore))

-- gambita: hahahaha
primo :: Int -> Bool
primo n = isPrimo n n

isPrimo :: Int -> Int -> Bool
isPrimo 1 1 = False
isPrimo 2 2 = True
isPrimo n 2
	| (mod n 2 > 0) = True
	| otherwise = False
isPrimo n x
	| (mod n (x-1) > 0) = isPrimo n (x-1)
	| otherwise = False

folhas :: Arvore -> [Int]
folhas Null = []
folhas (No n (Null) (Null)) = [n]
folhas (No _ esq dir) = (folhas esq) ++ (folhas dir)

-- parte C

elementosRepetidos :: Arvore -> Int -> Int
elementosRepetidos arvore n = elementosRep (elementos arvore) n

elementosRep :: [Int] -> Int -> Int
elementosRep [] _ = 0
elementosRep (a:b) n
	| (aparece (a:b) a >= n) = 1 + (elementosRep (remove b a) n)
	| otherwise = (elementosRep (remove b a) n)

remove :: [Int] -> Int -> [Int]
remove [] _ = []
remove (a:b) n
	| (a == n) = remove b n
	| otherwise = [a] ++ remove b n 

elementos :: Arvore -> [Int]
elementos Null = []
elementos (No n esq dir) = (elementos esq) ++ [n] ++ (elementos dir)

aparece :: [Int]-> Int -> Int
aparece [] _ = 0
aparece (a:b) n
	| (a == n) = 1 + aparece b n
	| otherwise = aparece b n


main = do
	print(maiorProfundidadeElemento minhaArvore 32)
	print(folhasPrimos minhaArvore)
	print(elementosRepetidos minhaArvoreC 2)
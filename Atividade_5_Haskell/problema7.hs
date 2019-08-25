aprovados3 :: [(Int, String, Float)] -> [String]
aprovados3 [] = []
aprovados3 (a:b)
	| (getNota(a) >= 6) = getNome(a) : aprovados3 b
	| otherwise = aprovados3 b

aprovados2 :: [(Int, String, Float)] -> [String]
aprovados2 [] = []
aprovados2 lista = [getNome x | x <- lista, (aprovado (getNota x))]

aprovado :: Float -> Bool
aprovado x
	| (x >= 6) = True
	| otherwise = False

aprovados :: [(Int, String, Float)] -> [String]
aprovados [] = []
aprovados lista = map getNome (filter verifica lista)

verifica :: (Int, String, Float) -> Bool
verifica (a,b,c)
	| (c >= 6) = True
	| otherwise = False

alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getNota :: (Int, String, Float) -> Float
getNota (a,b,c) = c

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

gerarPares :: [(Int, String, Float)] -> [(Int, String, Float)] -> [((Int, String, Float),(Int, String, Float))] 
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2, diferentes a b]

diferentes :: (Int, String, Float) -> (Int, String, Float) -> Bool
diferentes (_,a,_) (_,b,_)
	| (a < b) = True
	| otherwise = False

main = do
    print (gerarPares alunos alunos)
aprovados3 :: [(Int, String, Float)] -> [String]
aprovados3 [] = []
aprovados3 (a:b)
	| (getNota(a) >= 6) = getNome(a) : aprovados3 b
	| otherwise = aprovados3 b

aprovados2 :: [(Int, String, Float)] -> [String]
aprovados2 [] = []
aprovados2 lista = [getNome x | x <- lista ]

alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getNota :: (Int, String, Float) -> Float
getNota (a,b,c) = c

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

gerarPares :: [t] -> [u] -> [(t,u)] 
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2]

main = do
    print (aprovados2 alunos)
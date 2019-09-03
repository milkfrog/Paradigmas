data Arvore = Null | No Int Arvore Arvore

minhaArvore :: Arvore
minhaArvore = No 52 (No 32 (No 12 Null (No 32 Null Null)) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

tuaArvore :: Arvore
tuaArvore = No 52 (No 32 (No 12 (No 32 Null Null) Null) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + (somaElementos esq) + (somaElementos dir)

quatidade :: Arvore -> Int
quatidade Null = 0
quatidade (No n esq dir) = 1 + (quatidade esq) + (quatidade dir)

buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x 
    | (n == x) = True                           
    | otherwise = (buscaElemento esq x) || (buscaElemento dir x)

ocorrenciasElemento :: Arvore -> Int -> Int
ocorrenciasElemento Null _ = 0
ocorrenciasElemento (No n esq dir) x
    | (n == x) = 1 + (ocorrenciasElemento esq x) + (ocorrenciasElemento dir x)
    | otherwise = (ocorrenciasElemento esq x) + (ocorrenciasElemento dir x)

maioresQueElemento :: Arvore -> Int -> Int
maioresQueElemento Null _ = 0
maioresQueElemento (No n esq dir) x
    | (n > x) = 1 + (maioresQueElemento esq x) + (maioresQueElemento dir x)
    | otherwise = (maioresQueElemento esq x) + (maioresQueElemento dir x)

mediaElementos :: Arvore -> Float
mediaElementos a = fromIntegral(somaElementos a)/fromIntegral(quatidade a)

subtraiParesImpares :: Arvore -> Int
subtraiParesImpares Null = 0
subtraiParesImpares (No n esq dir)
  | n `mod` 2 == 0 = subtraiParesImpares esq + subtraiParesImpares dir + n
  | otherwise = subtraiParesImpares esq + subtraiParesImpares dir - n

elementos :: Arvore -> [Int]
elementos Null = []
elementos (No n esq dir) = (elementos esq) ++ [n] ++ (elementos dir)

iguais :: Arvore -> Arvore -> Bool
iguais (No n esq dir) Null = False
iguais Null (No n esq dir) = False
iguais Null Null = True
iguais (No n1 esq1 dir1) (No n2 esq2 dir2)
  | n1 == n2 = iguais dir1 dir2 && iguais esq1 esq2
  | otherwise = False

folhas :: Arvore -> Int
folhas Null = 0
folhas (No _ (Null) (Null)) = 1
folhas (No _ esq dir) = (folhas esq) + (folhas dir)
    
limiteSup :: Int
limiteSup = 1000 --Define um limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y 
  | (x < y) = x
  | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup 
minimoElemento (No n esq dir) = 
    minimo n (minimo (minimoElemento esq) (minimoElemento dir))
    
main = do
    putStrLn (show (somaElementos minhaArvore))
    putStrLn (show (buscaElemento minhaArvore 30))
    putStrLn (show (ocorrenciasElemento minhaArvore 32))
    putStrLn (show (maioresQueElemento minhaArvore 35))
    putStrLn (show (mediaElementos minhaArvore))
    putStrLn (show (quatidade minhaArvore))
    putStrLn (show (elementos minhaArvore))
    putStrLn (show (subtraiParesImpares minhaArvore))
    putStrLn (show (iguais minhaArvore tuaArvore))
    putStrLn (show (folhas minhaArvore))
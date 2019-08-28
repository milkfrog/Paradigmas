type Nome = String
type Disciplina = String
type Nota = Float
type Aluno = (Nome, Disciplina, Nota, Nota, Nota)

aluno :: Int -> Aluno
aluno 1 = ("Marcelo", "Paradigmas", 10, 10, 10)
aluno 2 = ("Jose", "ED", 5, 4, 7)
aluno 3 = ("Chico", "Calculo 1", 1.5, 2.7, 3.4)

fazMedia :: Float -> Float -> Float -> Float
fazMedia a b c = ((a + b + c)/3)

getNota1 :: Aluno -> Nota
getNota1 (_,_,n,_,_) = n

getNota2 :: Aluno -> Nota
getNota2 (_,_,_,n,_) = n

getNota3 :: Aluno -> Nota
getNota3 (_,_,_,_,n) = n

notaFinal :: Int -> Float
notaFinal x = (fazMedia getNota1(x) getNota2(x) getNota3(x))

getNome :: Aluno -> Nome
getNome (n,_,_,_,_) = n

main = do
	print(getNome(aluno 1))
	print((getNota1(aluno 2) + getNota2(aluno 2) + getNota3(aluno 2))/3)
	print(notaFinal 2)
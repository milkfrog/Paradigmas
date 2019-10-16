type Nome = String
type Disciplina = String
type Nota = Float
type Aluno = (Nome, Disciplina, Nota, Nota, Nota)

aluno :: Int -> Aluno
aluno 1 = ("Marcelo", "Paradigmas", 10, 10, 10)
aluno 2 = ("Jose", "ED", 5, 4, 7)
aluno 3 = ("Chico", "Calculo 1", 1.5, 2.7, 3.4)

getNotas :: Aluno -> Nota
getNotas (_,_,a,b,c) = a + b + c

notaFinal :: Int -> Float
notaFinal x = (getNotas (aluno x))/3

getNome :: Aluno -> Nome
getNome (n,_,_,_,_) = n

somaTodos :: Int -> Float
somaTodos quantidade
	| (quantidade == 0) = 0
	| otherwise = (notaFinal quantidade) + (somaTodos(quantidade - 1))

notaFinalTodos :: Int -> Float
notaFinalTodos quantidade = ((somaTodos quantidade) / fromIntegral(quantidade))

main = do
	print(getNome(aluno 1))
	print(notaFinal 2)
	print(notaFinalTodos 3)
class (Integral x) => MeuInt x where
	bigger :: x -> x -> x
	smaller :: x -> x -> x

	bigger a b
		| a > b = a
		| otherwise = b

	smaller a b
		| a == (bigger a b) = b
		| otherwise = a

instance MeuInt Integer
instance MeuInt Int

main = do
	print (bigger (4::Integer) (12::Integer)) -- 12
	print (smaller (4::Integer) (12::Integer)) -- 4
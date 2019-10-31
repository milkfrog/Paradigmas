class (Num a) => MeuFloat a where
	(+++) :: a -> a -> a
	(***) :: a -> a -> a
	
	x *** y = x * x * y

instance MeuFloat Double where
	x +++ y = 2 * x + y

instance MeuFloat Integer where
	x +++ y = 10 * x + y

main = do
	print ((4::Integer) *** (2::Integer)) -- 4*4*2 = 32
	print ((4.2::Double) *** (2::Double)) -- 4.2*4.2*2 = 35.28
	print ((2::Integer) +++ (4::Integer)) -- 10*2 + 4 = 24
	print ((2.0::Double) +++ (4.0::Double)) -- 2*2.0 + 4.0 = 8.0
soma :: Int -> Int -> Int
soma 0 _ = 0
soma n p | mod p 5 /= 0 = p + soma (n-1) (p+2)
	 | otherwise = soma n (p+2)

somaPar :: Int -> Int
somaPar n = soma n 2

main = do
	print(somaPar 5)

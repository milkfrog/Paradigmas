soma :: Float -> Float -> Float
soma x y = x + y
soma :: [Char] -> [Char] -> [Char]
soma x y = x ++ y

main = do
	print (soma 21 10)
	print (soma "abc" "def")
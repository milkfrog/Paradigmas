data Forma = Circulo Float | Retangulo Float Float | Triangulo Float Float
area :: Forma -> Float
area (Circulo r) = pi * r * r
area (Retangulo a b) = a * b
area (Triangulo a b) = (a * b)/2

main = do
	print(area (Circulo 4))
	print(area (Retangulo 4 3))
	print(area (Triangulo 2 3))
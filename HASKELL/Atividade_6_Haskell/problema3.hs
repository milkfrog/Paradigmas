data Ponto = Ponto2D Float Float | Ponto3D Float Float Float

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D x1 y1) (Ponto2D x2 y2) = ((x1 - x2)**2 + (y1 - y2)**2)**(0.5)
distancia (Ponto3D x1 y1 z1) (Ponto3D x2 y2 z2) = ((x1-x2)**2 + (y1-y2)**2 + (z1-z2)**2)**(0.5)

main = do
	putStrLn(show (distancia (Ponto2D 1 1) (Ponto2D 5 5)))
	print(distancia (Ponto3D 3 2 4.5) (Ponto3D 2 2.22 6))
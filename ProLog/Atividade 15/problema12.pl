% Regras:
distancia3D(ponto(X1,Y1,Z1), ponto(X2,Y2,Z2), Dist) :- Dist is (sqrt(((X2-X1)^2) + ((Y2-Y1)^2) + ((Z2-Z1)^2))).

/*Consultas: 
?- distancia3D(ponto(10,10,10),ponto(20,20,20),K).
K = 17.320508075688775.

?- distancia3D(ponto(10,10,10),ponto(30,30,30),K).
K = 34.64101615137755.

?- distancia3D(ponto(310,310,310),ponto(30,30,30),K).
K = 484.9742261192856.

*/
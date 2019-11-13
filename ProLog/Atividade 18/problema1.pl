% Regras:
distancia(ponto2d(X1,Y1), ponto2d(X2,Y2),Resposta) :- Resposta is sqrt(((X1 - X2)^2) + ((Y1 - Y2)^2)).
colineares(ponto2d(X1,Y1), ponto2d(X2,Y2),ponto2d(X3,Y3)) :- Det is ((X1 * Y2) + (Y1 * X3) + (X2 * Y3) - (Y2 * X3) - (X1 * Y3) - (Y1 * X2)), Det = 0, true, !; false.
colineares1(ponto2d(X1,Y1), ponto2d(X2,Y2)) :- Det is ((X1 * Y2) - (Y1 * X2)), Det = 0, true, !; false.
formaTriangulo(ponto2d(X1,Y1), ponto2d(X2,Y2),ponto2d(X3,Y3)) :- distancia(ponto2d(X1,Y1), ponto2d(X2,Y2),A), 
                                                                 distancia(ponto2d(X3,Y3), ponto2d(X2,Y2),B), 
                                                                 distancia(ponto2d(X1,Y1), ponto2d(X3,Y3),C), 
                                                                 (B - C) < A, A < B + C,
                                                                 (A - C) < B, B < A + C,
                                                                 (A - B) < C, C < A + B,
                                                                 true, !; false.

/*Consultas:
?- distancia(ponto2d(5.5,4.4), ponto2d(2.2,3.3),X).
X = 3.478505426185217.

?- colineares(ponto2d(0,5),ponto2d(1,3),ponto2d(2,1)).
true.

?- colineares(ponto2d(0,5),ponto2d(1,3),ponto2d(2,3)).
false.

?- formaTriangulo(ponto2d(0,0), ponto2d(2,0),ponto2d(0,2)).
true.
 */
% Regra:
eqSegundoGrau(A,B,C,ValorX) :- 0 is ((A * ValorX^2) + (B * ValorX) + C).

/*Consultas:
?- eqSegundoGrau(1,-10,24,4).
true.

?- eqSegundoGrau(1,-10,24,3).
false.

 */
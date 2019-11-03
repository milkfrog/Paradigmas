% Regra:
potencia(X,Y,Resultado) :- Resultado is X^Y.

/*Consultas: 
?- potencia(2,3,8).
true.

?- potencia(2,10,1024).
true.

?- potencia(2,10,1000).
false.

*/
/* Regra: */
triangulo(X,Y,Z) :- abs(X - Y) < Z, Z < (X + Y), abs(X - Z) < Y, Y < (X + Z), abs(Y - Z) < X, X < (Y + Z).

/* Consultas: 
?- triangulo(4,8,9).
true.

?- triangulo(10,5,4).
false.

*/
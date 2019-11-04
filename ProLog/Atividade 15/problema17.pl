% Regra:
mdc1(X,Y,Resultado) :- Y > X, mdc1(Y,X,Resultado).
mdc1(X,Y,Resultado) :- (Y > 0, Z is X mod Y, mdc1(Y,Z,Resultado));(Y == 0, Resultado is X).
mdc(X,Y,Z,Resultado) :- mdc1(X,Y,C), mdc1(C,Z,B), Resultado is B.
mmc(X,Y,Resultado) :- mdc1(X,Y,C), Resultado is (X*Y/C).

/*Consultas: 
?- mmc(120,36,X).
X = 360 ;
false.

?- mmc(750,500,X).
X = 1500 ;
false.

*/
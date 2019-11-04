% Regra:
mdc1(X,Y,Resultado) :- Y > X, mdc1(Y,X,Resultado).
mdc1(X,Y,Resultado) :- (Y > 0, Z is X mod Y, mdc1(Y,Z,Resultado));(Y == 0, Resultado is X).
mdc(X,Y,Z,Resultado) :- mdc1(X,Y,C), mdc1(C,Z,B), Resultado is B.

/*Consultas: 
?- mdc(500,250,25,X).
X = 25 ;
false.

?- mdc(2422,2400,5000,X).
X = 2 ;
X = 2 ;
false.

*/
% Regra:
mdc(X,Y,Resultado) :- Y > X, mdc(Y,X,Resultado).
mdc(X,Y,Resultado) :- (Y > 0, Z is X mod Y, mdc(Y,Z,Resultado));(Y == 0, Resultado is X).

/*Consultas: 
?- mdc(10,0,X).
X = 10.

?- mdc(30,10,X).
X = 10 ;
false.

?- mdc(250,25,X).
X = 25 ;
false.

?- mdc(250,100,X).
X = 50 ;
false.

*/
% Regra:
mdc1(X,Y,Resultado) :- Y > X, mdc1(Y,X,Resultado).
mdc1(X,Y,Resultado) :- (Y > 0, Z is X mod Y, mdc1(Y,Z,Resultado));(Y == 0, Resultado is X).
mdc(X,Y,Z,Resultado) :- mdc1(X,Y,C), mdc1(C,Z,B), Resultado is B.
mmc(X,Y,Resultado) :- mdc1(X,Y,C), Resultado is (X*Y/C).
coprimos(X,Y) :- mdc1(X,Y,C), C == 1.

/*Consultas: 
?- coprimos(21,20).
true ;
false.

?- coprimos(7,5).
true ;
false.

?- coprimos(30,20).
false.


*/
% Regra:
mdc1(X,Y,Resultado) :- Y > X, mdc1(Y,X,Resultado).
mdc1(X,Y,Resultado) :- (Y > 0, Z is X mod Y, mdc1(Y,Z,Resultado));(Y == 0, Resultado is X).
coprimos(X,Y,Z) :- (mdc1(X,Y,C), C == 1, Z is 1, !);(mdc1(X,Y,C), C \= 1, Z is 0, !).
coprimos(_,1,Z) :- Z is 1. 
teste(N,X,Z) :- X1 is X - 1, coprimos(N,X,C), X1 > 0, teste(N,X1,B) ,Z = C + B; !.
totienteEuler(N,K) :- X is N-1, teste(N,X,K).

/*Consultas: 
Extremamente bugado. Rever com professor:

?- totienteEuler(10,K).
K = 1+(0+(1+(0+(0+(0+(1+(0+_3908))))))) ;
K = 1+(0+(1+(0+(0+(0+(1+_3902)))))) ;
K = 1+(0+(1+(0+(0+(0+_3890))))) ;
K = 1+(0+(1+(0+(0+_3878)))) ;
K = 1+(0+(1+(0+_3872))) ;
K = 1+(0+(1+_3854)) ;
K = 1+(0+_3836) ;
K = 1+_3824 ;
true.

*/
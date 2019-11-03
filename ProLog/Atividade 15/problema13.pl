% Regra:
maior(A,B,C,X) :- (A >= B, K is A; A < B, K is B), (K >= C, X is K; K < C, X is C).

/*Consultas: 
?- maior(10,2,3,X).
X = 10 ;
false.

?- maior(10,20,3,X).
X = 20 ;
false.

?- maior(10,20,33,X).
X = 33.

*/
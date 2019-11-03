% Regra:
absoluto(N,X) :- (N >= 0, X is N);(N < 0, X is -N).

/*Consultas: 
?- absoluto(10,X).
X = 10 ;
false.

?- absoluto(-10,X).
X = 10.

*/
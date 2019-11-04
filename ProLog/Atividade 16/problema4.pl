% Regra:
soma([],0).
soma([H|T],X) :- soma(T,R), X is H + R.

/*Consulta: 
?- soma([1,2,7,8],X).
X = 18.

*/

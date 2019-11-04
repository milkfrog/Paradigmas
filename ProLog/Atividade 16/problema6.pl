% Regra:
menor([H],H).
menor([H,H2|T],X) :- H =< H2, menor([H|T],X).
menor([H,H2|T],X) :- H > H2, menor([H2|T],X).

/*Consulta: 
?- menor([5,1,3,8],X).
X = 1 ;
false.

*/

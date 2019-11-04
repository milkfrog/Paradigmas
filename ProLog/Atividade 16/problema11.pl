% Regra:
primeiros(_,[],[]).
primeiros(0,_,[]).
primeiros(N,[H|T],[H|R]) :- N > 0, N2 is N - 1, primeiros(N2,T,R).

/*Consulta: 
?- primeiros(3,[1,2,3,4,5],L2).
L2 = [1, 2, 3] ;
false.

*/

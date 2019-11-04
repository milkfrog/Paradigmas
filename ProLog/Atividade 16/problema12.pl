% Regra:
apagar(_,[],[]).
apagar(N,[_|T],R) :- N > 0, N2 is N - 1, apagar(N2,T,R).
apagar(0,[H|T],[H|R]) :- apagar(0,T,R).


/*Consulta: 
?- apagar(3,[1,2,3,4,5],L2).
L2 = [4, 5] ;
false.

*/

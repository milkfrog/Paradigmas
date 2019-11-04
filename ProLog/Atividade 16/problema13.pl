% Regra:
dividir([],[],[]).
dividir([H|T],[H|R],E) :- dividir(T,E,R).

/*Consulta: 
?- dividir([1,2,3,4,5],L2,L3).
L2 = [1, 3, 5],
L3 = [2, 4].

*/
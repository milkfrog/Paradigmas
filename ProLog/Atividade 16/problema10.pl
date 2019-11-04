% Regra:
reverso(L,R) :- reversoInner(L,[],R).
reversoInner([],A,A).
reversoInner([H|T],A,R) :- reversoInner(T,[H|A],R).
inverte(L1,L2) :- reverso(L1,L2).

/*Consulta: 
?- inverte([1,2,3],L2).
L2 = [3, 2, 1].

*/

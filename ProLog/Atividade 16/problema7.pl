% Regra:
reverso(L,R) :- reversoInner(L,[],R).
reversoInner([],A,A).
reversoInner([H|T],A,R) :- reversoInner(T,[H|A],R).
palindrome(L) :- reverso(L,L).

/*Consulta: 
?- palindrome([1,2,3,4,3,2,1]).
true.

*/

% Regra:
posicao(X,[X|_],0).
posicao(X,[_|T],P) :- posicao(X,T,P2), !, P is P2 + 1.
uniao([H|T],[],[H|T]).
uniao([],[H|T],[H|T]).
uniao([],[],[]).
uniao([H|T],S2,[H|E]) :- \+ posicao(H,S2,_), uniao(T,S2,E).
uniao([_|T],S2,S3) :- uniao(T,S2,S3).


/*Consulta: 
?- uniao([1,2,3,4],[1,2,5,6],S3).
S3 = [3, 4, 1, 2, 5, 6] ;
S3 = [3, 1, 2, 5, 6] ;
S3 = [4, 1, 2, 5, 6] ;
S3 = [1, 2, 5, 6] ;
false.

*/

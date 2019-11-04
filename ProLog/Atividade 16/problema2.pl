% Regra:
inserirElementoPosicao(X,_,[],[X]).
inserirElementoPosicao(X,0,[H|T],[X,H|T]).
inserirElementoPosicao(X,P,[H|T],[H|R]) :- P2 is P-1, inserirElementoPosicao(X,P2,T,R).

/*Consulta: 
?- inserirElementoPosicao(7,1,[1,2,3],L2).
L2 = [1, 7, 2, 3] ;
L2 = [1, 2, 3, 7] ;
false.


*/
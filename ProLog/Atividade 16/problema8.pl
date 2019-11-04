% Regra:
menor([H],H).
menor([H,H2|T],X) :- H =< H2, menor([H|T],X).
menor([H,H2|T],X) :- H > H2, menor([H2|T],X).
maior([H],H).
maior([H,H2|T],X) :- H >= H2, maior([H|T],X).
maior([H,H2|T],X) :- H < H2, maior([H2|T],X).
diferencaMaiorMenor([],0).
diferencaMaiorMenor(L,X) :- menor(L,R), maior(L,R2), X is R2 - R.


/*Consulta: 
?- diferencaMaiorMenor([8,3,1,5],X).
X = 7 ;
false.

*/

% Regra:
soma([],0).
soma([H|T],X) :- soma(T,R), X is H + R.
conta([],0).
conta([H|T],X) :- conta(T,R), X is 1 + R.
media([],0).
media(L,X) :- soma(L,R), conta(L,R2), X is R/R2. 

/*Consulta: 
?- media([1,2,7,8],X).
X = 4.5.

*/

/*Regra: */
divisivel(N,K) :- 0 is mod(N,K).
/* Consultas: 
?- divisivel(10,2).
true.

?- divisivel(210,2).
true.

?- divisivel(211,2).
false.

*/
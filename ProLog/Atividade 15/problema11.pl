% Regras:
fib(1,1).
fib(2,1).
fib(N,K) :- N1 is N - 1, N2 is N - 2, fib(N1, K1), fib(N2, K2), K is K1 + K2.

/*Consultas: 
?- fib(10,K).
K = 55 ;
ERROR: Out of local stack
?- fib(13,K).
K = 233 ;
ERROR: Out of local stack

*/
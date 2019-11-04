% Regra:
divisivel(X,Y) :- 0 is X mod Y, !.
divisivel(X,Y) :- X > Y+1, divisivel(X, Y+1).
primo(2) :- true, !.
primo(N) :- N < 2, !, false.
primo(N) :- not(divisivel(N, 2)).

/*Consultas: 
?- primo(7).
true.

?- primo(5).
true.

?- primo(6).
false.

*/
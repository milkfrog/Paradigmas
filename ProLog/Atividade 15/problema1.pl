max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- Y > X.



genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).
genitor(bob, ana).
genitor(bob, pat).
genitor(liz, bill).
genitor(pat, jim).

ascendente(X,Y) :- genitor(X,Y).
ascendente(X,Y) :- genitor(X, Z), ascendente(Z, Y).


:- initialization(main). % define a meta inicial
main :- read(X),
        writeln(X),
        Y is sqrt(X),
        writeln(Y),
        halt.

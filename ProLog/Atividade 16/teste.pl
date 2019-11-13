enesimo(0, [H|_], H).
enesimo(I, [_|T], X) :- I2 is I - 1, enesimo(I2, T, X).

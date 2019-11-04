%totienteEuler(10,K).
mdc(A, A, A).
mdc(A, B, G) :- A > B, C is A - B, mdc(C, B, G).
mdc(A, B, G) :- A < B, C is B - A, mdc(A, C, G).

coprimos(A, B) :- mdc(A, B, 1).

totienteEuler(1, 1).
totienteEuler(M, P) :- M2 is M - 1, totiente(M, M2, P).
totiente(_, 0, 0).
totiente(M, R, P) :- coprimos(M, R), R2 is R - 1, totiente(M, R2, P2), P is P2 + 1.
totiente(M, R, P) :- \+ coprimos(M, R), R2 is R - 1, totiente(M, R2, P).
%K = 4.

no(52, 
    no(32,
        no(12,nil,nil),
        no(35,nil,nil)), 
    no(56,
        no(55,
            no(55,nil,nil),
            nil),
        no(64,nil,nil))).
        
soma(nil, 0).
soma(no(N, ArvE, ArvD),Soma) :-
    soma(ArvE,SomaEsq),
    soma(ArvD,SomaDir),
    Soma is N + SomaEsq + SomaDir.
    
membro(N, no(N, _, _)) :- !.
membro(N, no(_, ArvE, ArvD)) :-
    membro(N, ArvE), !;
    membro(N, ArvD).
    
min(X,Y,X) :- X =< Y, !.
min(X,Y,Y).

minimo(nil,1000). %INF = 1000
minimo(no(N, ArvE, ArvD),Min) :-
    minimo(ArvE, MinE),
    minimo(ArvD, MinD),
    min(MinE, MinD, MinED),
    min(N, MinED, Min).
    
caminho(Y, no(Y, _, _), [Y]) :- !.
caminho(Y, no(K, ArvE, ArvD), [K|Caminho]) :-
    caminho(Y, ArvE, Caminho), !;
    caminho(Y, ArvD, Caminho).
% Regras novas:
ocorrencias(_, nil, 0).
ocorrencias(X, no(N, ArvE, ArvD), K) :- X == N, ocorrencias(X, ArvE, K1), ocorrencias(X, ArvD, K2), K is 1 + K1 + K2, !; 
                                        ocorrencias(X, ArvE, K1), ocorrencias(X, ArvD, K2), K is K1 + K2.

ocorrenciasMaiorQue(_, nil, 0).
ocorrenciasMaiorQue(X, no(N, ArvE, ArvD), K) :- N > X, ocorrenciasMaiorQue(X, ArvE, K1), ocorrenciasMaiorQue(X, ArvD, K2), K is 1 + K1 + K2, !;
                                                ocorrenciasMaiorQue(X, ArvE, K1), ocorrenciasMaiorQue(X, ArvD, K2), K is K1 + K2.

quantidadeElementos(nil, 0).
quantidadeElementos(no(_, ArvE, ArvD), Qtd) :- quantidadeElementos(ArvE, Qtd1), quantidadeElementos(ArvD, Qtd2), Qtd is 1 + Qtd1 + Qtd2.

mediaElementos(no(N, ArvE, ArvD), K) :- soma(no(N, ArvE, ArvD),Soma), quantidadeElementos(no(N,ArvE,ArvD), Qtd), K is Soma / Qtd.

arvoreToLista(nil, L, L).
arvoreToLista(no(N, ArvE, ArvD), L, [N|L]) :- arvoreToLista(ArvE, L, [N|L]), arvoreToLista(ArvD, L, [N|L]).

naoEstaPresente(_, nil) :- true.
naoEstaPresente(X, no(N, ArvE, ArvD)) :- X \== N, naoEstaPresente(X, ArvE), naoEstaPresente(X, ArvD). 


/*Consultas:
?- no(X,E,D), ocorrencias(56,no(X,E,D),K).
X = 52,
E = no(32, no(12, nil, nil), no(35, nil, nil)),
D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
K = 1 ;
false.

?- no(X,E,D), ocorrencias(55,no(X,E,D),K).
X = 52,
E = no(32, no(12, nil, nil), no(35, nil, nil)),
D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
K = 2 ;
false.

?- no(X,E,D), ocorrenciasMaiorQue(10, no(X,E,D),K).
X = 52,
E = no(32, no(12, nil, nil), no(35, nil, nil)),
D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
K = 8.

?- no(X,E,D), ocorrenciasMaiorQue(55, no(X,E,D),K).
X = 52,
E = no(32, no(12, nil, nil), no(35, nil, nil)),
D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
K = 2 ;
false.

?- no(X,E,D), mediaElementos(no(X,E,D),K).
X = 52,
E = no(32, no(12, nil, nil), no(35, nil, nil)),
D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
K = 45.125.

?- no(X,E,D), quantidadeElementos(no(X,E,D),K).
X = 52,
E = no(32, no(12, nil, nil), no(35, nil, nil)),
D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
K = 8.

?- no(X,E,D), arvoreToLista(no(X,E,D),[],L).
false.
<---------- ver com professor pq não to conseguindo essa.

?- no(X,E,D), naoEstaPresente(13, no(X,E,D)).
X = 52,
E = no(32, no(12, nil, nil), no(35, nil, nil)),
D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)) .

?- no(X,E,D), naoEstaPresente(12, no(X,E,D)).
false.

?- no(X,E,D), naoEstaPresente(52, no(X,E,D)).
false.


 */
% Aluno: Marcelo Contin
% Matricula: 19150807

% Camiseta:
camiseta(amarela).
camiseta(azul).
camiseta(branca).
camiseta(verde).
camiseta(vermelha).

% Nome:
nome(bernardo).
nome(caio).
nome(icaro).
nome(marcelo).
nome(wagner).

% Investimento:
investimento(acoes).
investimento(cdb).
investimento(lca).
investimento(lci).
investimento(tesouro).

% Valor:
valor(5).
valor(10).
valor(15).
valor(20).
valor(25).

% Prazo:
prazo(2).
prazo(3).
prazo(4).
prazo(5).
prazo(6).

% Profissão:
profissao(ator).
profissao(bancario).
profissao(engenheiro).
profissao(joalheiro).
profissao(programador).


%X está à ao lado de Y
aoLado(X,Y,Lista) :- nextto(X,Y,Lista);nextto(Y,X,Lista).
                       
%X está à esquerda de Y (em qualquer posição à esquerda)
aEsquerda(X,Y,Lista) :- nth0(IndexX,Lista,X), 
                        nth0(IndexY,Lista,Y), 
                        IndexX < IndexY.
                        
%X está à direita de Y (em qualquer posição à direita)
aDireita(X,Y,Lista) :- aEsquerda(Y,X,Lista). 

%X está no canto se ele é o primeiro ou o último da lista
noCanto(X,Lista) :- last(Lista,X).
noCanto(X,[X|_]).

todosDiferentes([]).
todosDiferentes([H|T]) :- not(member(H,T)), todosDiferentes(T).


solucao(ListaSolucao) :-
    ListaSolucao = [
        amigo(Camiseta1, Nome1, Investimento1, Valor1, Prazo1, Profissao1),
        amigo(Camiseta2, Nome2, Investimento2, Valor2, Prazo2, Profissao2),
        amigo(Camiseta3, Nome3, Investimento3, Valor3, Prazo3, Profissao3),
        amigo(Camiseta4, Nome4, Investimento4, Valor4, Prazo4, Profissao4),
        amigo(Camiseta5, Nome5, Investimento5, Valor5, Prazo5, Profissao5)
    ],

    % O homem que investiu R$ 5 mil está em algum lugar à direita do homem de Amarelo.
    aDireita(amigo(_, _, _, 5, _, _), amigo(amarela, _, _, _, _, _), ListaSolucao),

    % Caio está em algum lugar entre o amigo de camiseta Verde e o amigo que investiu em LCA, nessa ordem.
    aDireita(amigo(_, caio, _, _, _, _), amigo(verde, _, _, _, _, _), ListaSolucao),
    aEsquerda(amigo(_, caio, _, _, _, _), amigo(_, _, lca, _, _, _), ListaSolucao),

    % O Bancário está na segunda posição.
    Profissao2 = bancario,

    % O Programador está ao lado de quem fez um investimento com 6 anos de prazo.
    aoLado(amigo(_, _, _, _, _, programador), amigo(_, _, _, _, 6, _), ListaSolucao),

    % O homem de camiseta Branca investiu em LCI.
    member(amigo(branca, _, lci, _, _, _), ListaSolucao),

    % O amigo que investiu com um prazo de 3 anos está exatamente à esquerda de quem investiu em LCA.
    aEsquerda(amigo(_, _, _, _, 3, _), amigo(_, _, lca, _, _, _), ListaSolucao),
    aoLado(amigo(_, _, _, _, 3, _), amigo(_, _, lca, _, _, _), ListaSolucao),

    % Na quarta posição está quem fez um investimento com prazo de 2 anos.
    Prazo4 = 2,

    % Bernardo investiu R$ 10 mil.
    member(amigo(_, bernardo, _, 10, _, _), ListaSolucao),

    % O homem que investiu R$ 15 mil está em algum lugar à direita do homem de camiseta Vermelha.
    aDireita(amigo(_, _, _, 15, _, _), amigo(vermelha, _, _, _, _, _), ListaSolucao),

    % O investidor de camiseta Branca está em algum lugar entre o investidor de Verde e o Wagner, nessa ordem.
    aDireita(amigo(branca, _, _, _, _, _), amigo(verde, _, _, _, _, _), ListaSolucao),
    aEsquerda(amigo(branca, _, _, _, _, _), amigo(_, wagner, _, _, _, _), ListaSolucao),

    % O amigo que investiu em Ações está ao lado do amigo que fez um investimento de R$ 20 mil.
    aoLado(amigo(_, _, acoes, _, _, _), amigo(_, _, _, 20, _, _), ListaSolucao),

    % O Programador está na terceira posição.
    Profissao3 = programador,

    % O Bancário está exatamente à esquerda de quem fez um investimento com prazo de 3 anos.
    aEsquerda(amigo(_, _, _, _, _, bancario), amigo(_, _, _, _, 3, _), ListaSolucao),

    % Ícaro está exatamente à direita de quem investiu em CDB.
    aDireita(amigo(_, icaro, _, _, _, _), amigo(_, _, cdb, _, _, _), ListaSolucao),
    aoLado(amigo(_, icaro, _, _, _, _), amigo(_, _, cdb, _, _, _), ListaSolucao),

    % Quem investiu R$ 10 mil planeja ter retorno no prazo de 4 anos.
    member(amigo(_, _, _, 10, 4, _), ListaSolucao),

    % O dono do maior investimento está na terceira posição.
    Valor3 = 25,

    % O amigo que investiu em CDB está ao lado de quem fez um investimento com o menor prazo.
    aoLado(amigo(_, _, cdb, _, _, _), amigo(_, _, _, _, 2, _), ListaSolucao),

    % Caio está na segunda posição.
    Nome2 = caio,

    % Wagner está ao lado do homem de camiseta Branca.
    aoLado(amigo(_, wagner, _, _, _, _), amigo(branca, _, _, _, _, _), ListaSolucao),

    % O Joalheiro está em algum lugar entre quem investiu R$ 10 mil e o Ator, nessa ordem.
    aDireita(amigo(_, _, _, _, _, joalheiro), amigo(_, _, _, 10, _, _), ListaSolucao),
    aEsquerda(amigo(_, _, _, _, _, joalheiro), amigo(_, _, _, _, _, ator), ListaSolucao),

    % O amigo de camiseta Vermelha está em algum lugar à esquerda de quem investiu R$ 5 mil.
    aEsquerda(amigo(vermelha, _, _, _, _, _), amigo(_, _, _, 5, _, _), ListaSolucao),

    % O Joalheiro está na quarta posição.
    Profissao4 = joalheiro,

    %Testa todas as possibilidades...
    camiseta(Camiseta1), camiseta(Camiseta2), camiseta(Camiseta3), camiseta(Camiseta4), camiseta(Camiseta5),
    todosDiferentes([Camiseta1, Camiseta2, Camiseta3, Camiseta4, Camiseta5]),
    
    nome(Nome1), nome(Nome2), nome(Nome3), nome(Nome4), nome(Nome5),
    todosDiferentes([Nome1, Nome2, Nome3, Nome4, Nome5]),
    
    investimento(Investimento1), investimento(Investimento2), investimento(Investimento3), investimento(Investimento4), investimento(Investimento5),
    todosDiferentes([Investimento1, Investimento2, Investimento3, Investimento4, Investimento5]),
    
    valor(Valor1), valor(Valor2), valor(Valor3), valor(Valor4), valor(Valor5),
    todosDiferentes([Valor1, Valor2, Valor3, Valor4, Valor5]),
    
    prazo(Prazo1), prazo(Prazo2), prazo(Prazo3), prazo(Prazo4), prazo(Prazo5),
    todosDiferentes([Prazo1, Prazo2, Prazo3, Prazo4, Prazo5]),

    profissao(Profissao1), profissao(Profissao2), profissao(Profissao3), profissao(Profissao4), profissao(Profissao5),
    todosDiferentes([Profissao1, Profissao2, Profissao3, Profissao4, Profissao5]).

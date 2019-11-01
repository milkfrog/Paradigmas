genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).
genitor(bob, ana).
genitor(bob, pat).
genitor(liz,bill).
genitor(pat, jim).
mulher(pam).
mulher(liz).
mulher(pat).
mulher(ana).
homem(tom).
homem(bob).
homem(jim).
homem(bill).
pai(X,Y) :- genitor(X,Y), homem(X).
mae(X,Y) :- genitor(X,Y), mulher(X).
avo(AvoX, X) :- genitor(GenitorX, X), genitor(AvoX, GenitorX), homem(AvoX).
avoh(AvohX, X) :- genitor(GenitorX, X), genitor(AvohX, GenitorX), mulher(AvohX).
irmao(X,Y) :- genitor(PaiAmbos, X), genitor(PaiAmbos, Y), X \== Y, homem(X).
irma(X,Y) :- genitor(PaiAmbos, X), genitor(PaiAmbos, Y), X \== Y, mulher(X).
irmaos(X,Y) :- (irmao(X,Y); irma(X,Y)), X \== Y.
ascendente(X,Y) :- genitor(X,Y). %recursão - caso base
ascendente(X,Y) :- genitor(X, Z), ascendente(Z, Y). %recursão - passo recursivo

% Resolucao:
tio(X,Y) :- irmao(X,Z), pai(Z,Y); irmao(X,Z), mae(Z, Y).
/* 
Consulta:
tio(bob,X).
Resposta:
X = bill.
*/
tia(X,Y) :- irma(X,Z), pai(Z,Y); irma(X,Z), mae(Z,Y).
/* 
Consulta:
tia(X,Y).
Resposta:
X = liz,
Y = ana ;
X = liz,
Y = pat ;
X = ana,
Y = jim ;
false.
*/
primos(X,Y) :- tio(Z,X), pai(Z,Y); tio(Z,X), mae(Z,Y); tia(Z,X), pai(Z,Y); tia(Z,X), mae(Z,Y). 
/* 
Consulta:
primo(X,Y).
Resposta:
X = bill,
Y = ana ;
X = bill,
Y = pat ;
X = ana,
Y = bill ;
X = pat,
Y = bill ;
false.
*/
primo(X,Y) :- primos(X,Y), homem(X).
/* 
Consulta:
primo(X,Y).
Resposta:
X = bill,
Y = ana ;
X = bill,
Y = pat ;
false.
*/
prima(X,Y) :- primos(X,Y), mulher(X).
/* 
Consulta:
prima(X,Y).
Resposta:
X = ana,
Y = bill ;
X = pat,
Y = bill ;
false.
*/
bisavo(X,Y) :- pai(Z,Y), pai(X,Z); pai(Z,Y), mae(X,Z).
/* 
Consulta:
bisavo(X,Y).
Resposta:
X = tom,
Y = ana ;
X = tom,
Y = pat ;
X = pam,
Y = ana ;
X = pam,
Y = pat ;
false.
*/
bisavoh(X,Y) :- mae(Z,Y), mae(X,Z); mae(Z,Y), pai(X,Z).
/* 
Consulta:
bisavoh(X,Y).
Resposta:
X = tom,
Y = bill ;
X = bob,
Y = jim.
*/
descendente(X,Y) :- mae(Y,X); pai(Y,X).
/* 
Consulta:
descendente(X,Y).
Resposta:
X = bob,
Y = pam ;
X = bill,
Y = liz ;
X = jim,
Y = pat ;
X = bob,
Y = tom ;
X = liz,
Y = tom ;
X = ana,
Y = bob ;
X = pat,
Y = bob ;
false.
*/
feliz(X) :- pai(X, _); mae(X, _).
/* 
Consulta:
feliz(X).
Resposta:
X = tom ;
X = tom ;
X = bob ;
X = bob ;
X = pam ;
X = liz ;
X = pat.
*/
casal(X,Y) :- pai(X,Z), mae(Y,Z).
/* 
casal deve retornar quando uma mae e um pai tiverem o mesmo filho/filha.
Consulta:
casal(X,Y).
Resposta:
X = tom,
Y = pam ;
false.
*/
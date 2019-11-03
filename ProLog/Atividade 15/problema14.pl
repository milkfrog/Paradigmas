% Regra:
operacao(Op,X,Y,Resultado) :- (Op == '+', Resultado is X + Y);(Op == '-', Resultado is X - Y);(Op == '*', Resultado is X * Y);(Op == '/', Resultado is X / Y).

/*Consultas: 
?- operacao(-,10,5,X).
X = 5 ;
false.

?- operacao(+,10,5,X).
X = 15 ;
false.

?- operacao(*,10,5,X).
X = 50 ;
false.

?- operacao(/,10,5,X).
X = 2.

*/
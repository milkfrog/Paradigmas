% Regra:
aprovado(A,B,C) :- ((A+B+C)/3 >= 6),writeln("Aprovado");((A+B+C)/3 < 6,writeln("Reprovado")).

/*Consultas: 
?- aprovado(10,8,8).
Aprovado
true ;
false.

?- aprovado(2,8,8).
Aprovado
true ;
false.

?- aprovado(2,2,8).
Reprovado
true.
*/
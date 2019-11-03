% Regra:
xor(X,Y) :- (X,not(Y));(not(X),Y).

/*Consultas 
?- xor(true,false).
true ;
false.

?- xor(false,false).
false.

?- xor(false,true).
true.

?- xor(true,true).
false.

*/
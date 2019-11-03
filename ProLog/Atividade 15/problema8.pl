% Regra:
areaTriangulo(B,A,Area) :- Area is (B*A/2).

/*Consultas: 
?- areaTriangulo(10,5,X).
X = 25.

?- areaTriangulo(20,2,X).
X = 20.

?- areaTriangulo(20,2,20).
true.

*/
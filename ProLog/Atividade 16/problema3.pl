% Regra:
numerosParaPalavras([],[]).
numerosParaPalavras([1|T],[um|R]) :- numerosParaPalavras(T,R).
numerosParaPalavras([2|T],[dois|R]) :- numerosParaPalavras(T,R).
numerosParaPalavras([3|T],[tres|R]) :- numerosParaPalavras(T,R).
numerosParaPalavras([4|T],[quatro|R]) :- numerosParaPalavras(T,R).
numerosParaPalavras([5|T],[cinco|R]) :- numerosParaPalavras(T,R).
numerosParaPalavras([6|T],[seis|R]) :- numerosParaPalavras(T,R).
numerosParaPalavras([7|T],[sete|R]) :- numerosParaPalavras(T,R).
numerosParaPalavras([8|T],[oito|R]) :- numerosParaPalavras(T,R).
numerosParaPalavras([9|T],[nove|R]) :- numerosParaPalavras(T,R).
numerosParaPalavras([0|T],[zero|R]) :- numerosParaPalavras(T,R).

/*Consulta: 
?- numerosParaPalavras([1,2,3,7,0],L2).
L2 = [um, dois, tres, sete, zero] ;
false.

*/

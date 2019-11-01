/* fatos inicio */
estudaDisciplina(bob, ine5416).
estudaDisciplina(ana, ine5416).
estudaDisciplina(bob, ine5420).
estudaDisciplina(mario, ine5420).
estudaDisciplina(jose, ine5421).
professorDaDisciplina(maicon, ine5416).
professorDaDisciplina(jerusa, ine5420).
professorDaDisciplina(maicon, ine5421).
homem(maicon).
homem(bob).
homem(mario).
homem(jose).
mulher(jerusa).
mulher(ana).

/* fatos fim */
/* regras inicio */
professorLecionaAluno(X,Y) :- estudaDisciplina(Y, Z), professorDaDisciplina(X,Z).
colegasDeClasse(X,Y) :- estudaDisciplina(X,Z), estudaDisciplina(Y,Z), X \== Y.
professor(X) :- professorDaDisciplina(X,_), homem(X).
professora(X) :- professorDaDisciplina(X,_), mulher(X).
/* regras fim */

/*Consulta 1: 
professorDaDisciplina(maicon, X).
Resposta:
X = ine5416 ;
X = ine5421.
*/
/*Consulta 2:
professorLecionaAluno(maicon, X).
Resposta:
X = bob ;
X = ana ;
X = jose.
 */
/*Consulta 3: 
colegasDeClasse(X,bob).
Resposta:
X = ana ;
X = mario ;
false.
*/
/*Consulta 4:
colegasDeClasse(ana, bob).
Resposta:
true.
 */
/*Consulta 5:
colegasDeClasse(jose, bob).
Resposta:
false.
 */
/*Consulta 6:
professora(X).
Resposta:
X = jerusa ;
false.
 */
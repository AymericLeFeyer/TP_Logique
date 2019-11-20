:-dynamic professeur/4.

professeur(nom, prenom, discipline, identifiant).


add_professeur(X, Y, Z, A):-professeur(X, Y, Z, A),!, fail.
add_professeur(_, _, _, A):-professeur(_, _, _, A),!, fail.
add_professeur(X, Y, Z, A):-assert((professeur(X, Y, Z, A))).
del_professeur(X, Y, Z, A):-retract((professeur(X, Y, Z, A))).

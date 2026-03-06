% both male:
male(promise).
male(usoro).

% same father:
father(samuel,usoro).
father(samuel,promise).

% same mother:
mother(patience,promise).
mother(patience,usoro).

% they are not same:
not_same(X,Y):-
    X\==Y. % X is not equal to Y

% revised rule for relationship:
brothers(X,Y):-
    male(X),
    male(Y),
    father(S,X),
    father(S,Y),
    mother(P,X),
    mother(P,Y),
    not_same(X,Y).


parent(john, mary).
parent(mary, anne).

grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).


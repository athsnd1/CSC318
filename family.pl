female(mary).
female(anne).
sex(john,masculine).
parent(john, mary).
parent(mary, anne).



grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).

cousins(A,B):-
    siblings(X,Y),parent(X,A);parent(X,B),parent(Y,A);parent(Y,B),A\=B.


?-grandparent(john,anne).


% bob is a child of tom and pam:
parent(tom,bob).
parent(pam,bob).

% bob is a parent to ann and pat:
parent(bob,ann).
parent(bob,pat).

% bob is a brother to liz:
brothers(bob,liz).

% tom is a father to liz:
parent(tom,liz).

% rules:
grandparent(G,C):-
    parent(G,P),
    parent(P,C).

siblings(A,B):-
    parent(P,A),
    parent(P,B),
    A\=B.


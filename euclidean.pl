euclidean(A,0,A):-
    A>0.

euclidean(A,B,C):-
    A>=B,
    D is A-B,
    euclidean(D,B,C).
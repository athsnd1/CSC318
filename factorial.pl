factorial(0,1).

factorial(N,F):-
    N>0,
    M is N-1,
    factorial(M,F1),
    F is N*F1.
min_max(X,Y):-
    ( (X>Y,X\=Y) -> (write(X),write(" is max ")) ; (write(Y),write(" is max ")) ).
compare(X,Y):-
    X>Y,write(X),write(" is greater than "),write(Y),nl.

compare(X,Y):-
    X<Y,write(X),write(" is less than "),write(Y),nl.

compare(X,Y):-
    X=:=Y,write(X),write(" is equal to "),write(Y),nl.
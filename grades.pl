grade(Score):-
    scoreNotInRange(Score);
    ((Score=<100, Score>=90) -> write("A1") ; (Score=<89, Score >=80) -> write("A2") ;
    (Score=<79, Score>=70) -> write("A3") ; (Score=<69, Score>=60) -> write("B") ; (Score=<59, Score>=50 ->
        write("C")) ; (Score=<49, Score>=45) -> write("D") ; (Score=<44, Score>=40) -> write("E") ; write("F")).

scoreNotInRange(Score):-
    Score>100,write("Invalid score").

newGrade(Score):-
    (Score > 100  ; Score < 0),write("invalid Score"),!.

newGrade(Score):-
    Score >= 90,write("A1"), !.

newGrade(Score):-
    Score >= 80,write("A2"), !.


newGrade(Score):-
    Score >= 70,write("A3"), !.


newGrade(Score):-
    Score >= 60,write("B"), !.


newGrade(Score):-
    Score >= 50,write("C"), !.

newGrade(Score):-
    Score >= 45,write("D"), !.

newGrade(Score):-
    Score >= 40,Score =< 44,write("E"), !.

newGrade(_):-
    write("F"), !.
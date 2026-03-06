handle("y"):-
    write('Enter first number: '),
    read_line_to_string(user_input,Num1),
    number_string(Numb1,Num1),nl,
    write('Enter second number: '),
    read_line_to_string(user_input,Num2),
    number_string(Numb2,Num2),
    X is Numb1 + Numb2,
    write('Result is: '), write(X).

handle("n"):-
    write('Enter first number: '),
    read_line_to_string(user_input,Num1),
    number_string(Numb1,Num1),nl,
    write('Enter second number: '),
    read_line_to_string(user_input,Num2),
    number_string(Numb2,Num2),
    X is Numb1-Numb2,
    write('Result is: '), write(X).

handle(_):-
    write('invalid entry').

main:-
    write('You can perform two operations(addition or subtraction)'),nl,
    write('Enter y for addition and n for subtraction'),nl,
    read_line_to_string(user_input,Var),nl,
    handle(Var).
    exit_program.

exit_program:-
    halt.

:- initialization(main).


main:-
    write('Enter your name: '),nl,
    read_line_to_string(user_input,Name),nl,
    write('Your name is: '),write(Name),nl,nl,
    write('Enter your year of birth: '),nl,
    read_line_to_string(user_input,N),nl,
    number_string(Number,N),
    Y is 2026 - Number,
    write('You are '),write(Y),write(' years old!'),
    exit_program.

exit_program:-
    halt.

:-initialization(main).

    
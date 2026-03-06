get_inputs:-
    write('Enter your name'),nl,
    read_line_to_string(user_input, Name),nl,
    write('What year were you born?'),
    read_line_to_string(user_input,Yob),nl,
    number_string(N,Yob),
    write('Your name is: '), write(Name),nl,X is 2026-N,
    write('You are '), write(X),write(' '),write('years old').
?-get_inputs.
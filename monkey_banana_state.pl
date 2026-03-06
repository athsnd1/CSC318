:- dynamic move/3.

move(state(monkey_at(center),monkey_on(block),
block_at(center),banana_with(nobody),grab,state(monkey_at(center),
monkey_on(block),block_at(center),banana_with(monkey)))).

move(state(monkey_at(center),monkey_on(floor),
block_at(center),BananaStatus,climb_block,state(monkey_at(center),
monkey_on(block),block_at(center),BananaStatus))).

move(state(monkey_at(CurrentPos),monkey_on(floor),
block_at(CurrentPos),BananaStatus,move_block(CurrentPos,NewPos),state(monkey_at(NewPos),
monkey_on(floor),block_at(NewPos),BananaStatus))).

move(state(monkey_at(CurrentPos),monkey_on(floor),
block_at(BlockPos),BananaStatus,walk(CurrentPos,NewPos),state(monkey_at(NewPos)),
monkey_on(floor),block_at(BlockPos),BananaStatus)).

get(state(_,_,_,banana_with(monkey))).

get(State):-
    move(State,_,State2),
    get(State2).


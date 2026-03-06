%Initial facts:
monkeyAt(door).
monkeyOn(floor).
blockAt(window).
bananaAt(center).
bananaWith(nobody).

%Rules:
getBlock(Position):-
    monkeyAt(Position), blockAt(Position).

moveBlock:-
    monkeyAt(Position),
    blockAt(Position),
    retract(monkeyAt(door)),
    assert(monkeyAt(center)),
    retract(blockAt(window)),
    assert(blockAt(center)).

climbBlock:-
    monkeyAt(Position),
    blockAt(Position),
    retract(monkeyOn(floor)),
    assert(monkeyOn(block)).

grab:-
    bananaAt(center),
    monkeyAt(center),
    monkeyOn(block),
    retract(bananaWith(nobody)),
    assert(bananaWith(monkey)).

getBanana:-
    getBlock(window), moveBlock, climbBlock, grab.
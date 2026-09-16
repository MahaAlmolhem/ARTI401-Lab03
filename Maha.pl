% Gender facts

female(mariam).
male(abdulaziz).

female(maha).
female(jawaher).
female(aisha).
male(abdullah).
male(mohammed).

female(lina).
male(sultan).


% Parent facts

parent(mariam, maha).
parent(abdulaziz, maha).

parent(mariam, jawaher).
parent(abdulaziz, jawaher).

parent(mariam, aisha).
parent(abdulaziz, aisha).

parent(mariam, abdullah).
parent(abdulaziz, abdullah).

parent(mariam, mohammed).
parent(abdulaziz, mohammed).

parent(abdullah, lina).

parent(mohammed, sultan).


% Rules

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

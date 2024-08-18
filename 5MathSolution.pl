/* Name:Darsh */
/* CSE 240 Fall 2023 */

% Base case when Y is less than or equal to 0.
foo(X, Y, X) :- Y =< 0.

% Base case when X is less than or equal to 0.
foo(X, Y, Y) :- X =< 0.

% Recursive case when X >= Y.
foo(X, Y, F) :- 
    X > 0, Y > 0, X >= Y,
    X1 is X - 1,
    Y2 is Y - 2,
    foo(X1, Y2, F1),
    F is X + F1.

% Recursive case when X < Y.
foo(X, Y, F) :- 
    X > 0, Y > 0, X < Y,
    X2 is X - 2,
    Y3 is Y - 3,
    foo(X2, Y3, F2),
    F is Y + F2.

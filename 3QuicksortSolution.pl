/* Name: Darsh Chaurasia */
/* CSE 240 Fall 2023 */

/* Hint: You may want to consider how many base cases you might need
   and whether or not you'll need a helper function */

% Quicksort where the second element is chosen as the pivot
qsort2([], []).

qsort2([Pivot|Tail], Sorted):-
    % Size-n problem: [Pivot|Tail]
    % Construct size-m problems: Smaller elements and greater elements
    partition(Tail, Pivot, Smaller, Greater),
    
    % Recursively sort smaller and greater elements
    qsort2(Smaller, SortedSmaller),
    qsort2(Greater, SortedGreater),
    
    % Combine the sorted smaller, pivot, and sorted greater elements
    append(SortedSmaller, [Pivot|SortedGreater], Sorted).

% Partition the list into two sublists: elements smaller and greater than the pivot
partition([], _, [], []).
partition([X|Xs], Pivot, [X|Smaller], Greater):-
    X =< Pivot,
    partition(Xs, Pivot, Smaller, Greater).
partition([X|Xs], Pivot, Smaller, [X|Greater]):-
    X > Pivot,
    partition(Xs, Pivot, Smaller, Greater).

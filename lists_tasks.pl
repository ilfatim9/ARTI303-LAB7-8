% Task 1: Delete every occurrence of X from a ground list.

% Base case: the result for an empty list is empty.
deleteElement(_, [], []).

% Remove the head when it matches X.
deleteElement(X, [X|T], Result) :-
    deleteElement(X, T, Result).

% Keep the head when it differs from X.
deleteElement(X, [H|T], [H|Result]) :-
    X \= H,
    deleteElement(X, T, Result).

% Task 2: Add an element at the end.

add_at_the_end(X, [], [X]).

add_at_the_end(X, [H|T], [H|Result]) :-
    add_at_the_end(X, T, Result).

/* Example queries (enter in the SWI-Prolog console):

?- deleteElement(1, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
List = [2,4,3,4,3,4,2].

?- deleteElement(3, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
List = [1,2,1,4,4,1,1,1,4,2,1,1,1].

?- deleteElement(3, [1,2,3,4], List).
List = [1,2,4].

?- deleteElement(1, [], List).
List = [].

*/

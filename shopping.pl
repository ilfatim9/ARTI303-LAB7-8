% Start the shopping program with five items.
shopping :-
    menu([coffee, milk, chocolate, apple, juice]).

% Show the menu and read the user's choice.
menu(Basket) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    handle_choice(Choice, Basket).

handle_choice(d, Basket) :-
    display_items(Basket),
    menu(Basket).

handle_choice(a, Basket) :-
    write('enter the item you want to add'), nl,
    read(Item),
    append(Basket, [Item], NewBasket),
    write('The item has been added'), nl,
    menu(NewBasket).

handle_choice(e, _) :-
    write('Goodbye!'), nl.

handle_choice(Choice, Basket) :-
    Choice \= d,
    Choice \= a,
    Choice \= e,
    write('Invalid choice. Enter d, a, or e.'), nl,
    menu(Basket).

% Display one item per line using recursion.
display_items([]).
display_items([H|T]) :-
    write(H), nl,
    display_items(T).

/*
Load this file in SWI-Prolog, then start with:
?- shopping.

Try these inputs, one at a time:
d.
a.
bread.
d.
e.

The second display includes bread at the end.
*/

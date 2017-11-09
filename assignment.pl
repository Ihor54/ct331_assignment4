%Definitions for isElementInList(El, List)

isElementInList(El, [El|_]).
isElementInList(El, [_|T]):-
  isElementInList(El, T).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], List2, List2).
mergeLists([H|T], List2, Merged):-
  mergeLists(T, List2, L),
  Merged = [H|L].

%Definitions for reverseList(List, ReversedList)

% 1 solution
reverseList1(List, ReversedList):-
  helperReverseList(List, ReversedList, []).
helperReverseList([], AdditionalList, AdditionalList).
helperReverseList([H|T], ReversedList, AdditionalList):-
  helperReverseList(T, ReversedList, [H|AdditionalList]).

% 2 solution
reverseList([], []).
reverseList([H|T], ReversedList):-
  reverseList(T, List),
  mergeLists(List, [H], ReversedList).

%insertElementIntoListEnd(El, List, NewList)

% 1 solution
insertElementIntoListEnd(El, [], [El]).
insertElementIntoListEnd(El, [H|T], NewList):-
  insertElementIntoListEnd(El, T, List),
  NewList = [H|List].

% 2 solution
insertElementIntoListEnd2(El, List, NewList):-
  mergeLists(List, [El], NewList).

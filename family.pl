%male(Person)
%
male(i).
male(f).
male(s1).
male(s2).

%female(Person)
%
female(w).
female(d).

%father(Parent, Child)
%
parent(f,i).
parent(i,s1).
parent(f,s2).
parent(w,d).
parent(w,s1).
parent(d,s2).

%married(Husband, Wife)
%
married(i,w).
married(f,d).

married(X,Y) :- tmarried(X,Y).
tmarried(X,Y) :- married(Y,X).

father(Parent, Child) :-
parent(Parent, Child),
male(Parent).

mother(Parent, Child) :-
parent(Parent, Child),
female(Parent).

sibling(X,Y) :-
parent(F, X),
parent(F, Y),
X = Y.

uncle(Uncle, Nephew) :-
parent(Parent, Nephew),
sibling(Parent, Uncle),
male(Uncle).

grandfather(A1,B1) :-
parent(A1,X),
parent(X,B1),
male(A1).

grandmother(A2,B2) :-
parent(A2,X),
parent(X,B2),
female(A2).

parentinlaw(Parent, Child) :-
    parent(Partner, Child),
    married(Parent, Partner).

siblinginlaw(X,Y) :-
parent(Parent,X),
parent(Parent,Y),
X=Y.

siblinginlaw(X,Y) :-
parent(Parent,X),
parentinlaw(Parent,Y),
X=Y.

uncleinlaw(Uncle, Nephew) :-
parentinlaw(Parent, Nephew),
sibling(Parent, Uncle),
male(Uncle).

grandparentinlaw(GP, GC) :-
( parentinlaw(X, GC), parentinlaw(GP, X) );
( parent(X, GC), parentinlaw(GP, X) );
( parentinlaw(X, GC), parent(GP, X) ).

grandfatherinlaw(GF, GC) :-
grandparentinlaw(GF, GC),
male(GF).

grandmotherinlaw(GM, GC) :-
grandparentinlaw(GM, GC),
female(GM).

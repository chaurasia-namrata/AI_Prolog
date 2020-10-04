%Program : family.pl
%Source : Prolog
%
%Purpose : This is sample Program for prolog
%
%History : Original code by Barry Drake
%parent(Praent, Child)
%
parent(albert, jim).
parent(albert, peter).
parent(jim, brian).
parent(john, darren).
parent(peter, lee).
parent(peter, sandra).
parent(peter, james).
parent(peter, kate).
parent(peter, kyle).
parent(brian, jenny).
parent(irene, jim).
parent(irene, peter).
parent(pat, brian).
parent(pat, darren).
parent(amanda, jenny).

%female(Person)
%
female(irene).
female(pat).
female(lee).
female(sandra).
female(jenny).
female(amanda).
female(kate).

%male(Person)
%
male(albert).
male(jim).
male(peter).
male(brian).
male(john).
male(darren).
male(james).
male(kyle).

%yearOfBirth(Person, Year)
%
yearOfBirth(irene, 1923).
yearOfBirth(pat, 1954).
yearOfBirth(lee,1970).
yearOfBirth(sandra, 1973).
yearOfBirth(jenny, 2004).
yearOfBirth(amanda, 1979).
yearOfBirth(albert, 1926).
yearOfBirth(jim, 1949).
yearOfBirth(peter, 1945).
yearOfBirth(brian, 1974).
yearOfBirth(john, 1955).
yearOfBirth(darren, 1976).
yearOfBirth(james, 1969).
yearOfBirth(kate, 1975).
yearOfBirth(kyle, 1976).

grandparent(Grandparent, Grandchild) :-
parent(Grandparent, Child),
parent(Child, Grandchild).

older(Person1, Person2) :-
yearOfBirth(Person1, Year1),
yearOfBirth(Person2, Year2),
Year2 > Year1.

%sibling(sibling1, sibling2) :-
%parent(a, sibling2).

sibling(X,Y) :-  parent(P1,X),parent(P1,Y), X \= Y.

predecessor(Person, Predecessor1) :-
parent(Predecessor1, Person).

predecessor(Person, Predecessor1) :-
parent(Child1, Person),
predecessor(Child1, Predecessor1).

male1(person('Barry', 'Drake')).
male1(person('Jim', 'Fried')).
female1(person('Dot', 'Kanga')).


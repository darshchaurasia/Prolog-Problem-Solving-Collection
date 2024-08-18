/* Name: Darsh Chaurasia*/
/* CSE 240 Fall 2023 */

/* Factbase for a family tree. It consists of facts and rules. */

/* MALES */
male(jim).
male(abe).
male(rob).
male(ben).
male(bud).
male(lee).
male(tex).
male(roy).
male(mac).
male(kai).

/* FEMALES */
female(ana).
female(joy).
female(mia).
female(zoe).
female(kim).
female(val).
female(mae).
female(pam).
female(amy).

/* Parent-Child Relationships */
father_of(abe, ana).
father_of(abe, rob).
father_of(abe, jim).
father_of(jim, mac).
father_of(jim, kim).
father_of(bud, roy).
father_of(bud, zoe).
father_of(bud, val).
father_of(bud, tex).
father_of(ben, amy).
father_of(ben, bud).
father_of(kai, pam).
father_of(kai, lee).

mother_of(joy, rob).
mother_of(joy, jim).
mother_of(joy, ana).
mother_of(mia, mac).
mother_of(mia, kim).
mother_of(ana, tex).
mother_of(ana, roy).
mother_of(ana, val).
mother_of(ana, zoe).
mother_of(mae, bud).
mother_of(mae, amy).
mother_of(amy, lee).
mother_of(amy, pam).

/* Rules */

/* Question 1.1 */
% Checks if X is a male or the father of any family member
is_male(X) :-
    male(X); 
    father_of(X, _).

/* Question 1.2 */
% Determines if X is a female or the mother of any family member
is_female(X):-
    female(X); 
    mother_of(X, _).

/* Question 1.3 */
% Identifies if X is the grandmother or grandfather of Z
grandmother_of(X, Z):- 
    female(X), 
    parent_of(X, Y), 
    parent_of(Y, Z).

grandfather_of(X, Z):- 
    male(X), 
    parent_of(X, Y), 
    parent_of(Y, Z).

/* Question 1.4 */
% Establishes if X and Y are siblings
sibling_of(X, Y):- 
    parent_of(Parent, X), 
    parent_of(Parent, Y), 
    X \= Y.

/* Question 1.5 */
% Confirms if X is a parent of Y
parent_of(X, Y):- 
    mother_of(X, Y); 
    father_of(X, Y).

/* Question 1.6 */
% Recursive rule to determine if X is a descendant of Y
descendent_of(X, Y) :- 
    parent_of(Y, X), 
    X \= Y.

descendent_of(X, Y) :- 
    parent_of(Z, X), 
    X \= Z, 
    descendent_of(Z, Y).

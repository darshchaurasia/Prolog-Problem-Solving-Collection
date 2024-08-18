/* Name: Darsh*/
/* CSE 240 Fall 2023 */

/* Facts */
genre(planetDrop, action).
genre(mechaTech, rpg).

focus(planetDrop, gameplay).
focus(planetDrop, graphics).
focus(mechaTech, story).
focus(mechaTech, world).

element(gameplay, mechanics).
element(gameplay, framerate).
element(graphics, rendering).
element(graphics, meshes).
element(story, characters).
element(story, plot).
element(world, design).
element(world, culture).


/* Rules */
/* Question 2.1 */
game(X, [Genre|Focuses]) :-
    genre(X, Genre),
    findall(Focus, focus(X, Focus), Focuses).

/* Question 2.2 */
creation(X, Elements) :-
    findall(Element, (focus(X, Focus), element(Focus, Element)), Elements).

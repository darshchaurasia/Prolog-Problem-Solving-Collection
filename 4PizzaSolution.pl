/* Name: Darsh Chaurasia*/
/* CSE 240 Fall 2023 */

pizza(P, S, B, O, M) :-
    between(0, 10, P),        % Pepperoni can be between 0 and 10 toppings
    between(0, 4, S),         % Sausage can be between 0 and 4 toppings
    between(0, 6, B),         % Bacon can be between 0 and 6 toppings
    between(0, 8, O),         % Onion can be between 0 and 8 toppings
    between(0, 5, M),         % Mushroom can be between 0 and 5 toppings
    TotalWeight is P * 4 + S * 10 + B * 6 + O * 5 + M * 7,
    TotalWeight = 40.        % Total weight must be 40 ounces


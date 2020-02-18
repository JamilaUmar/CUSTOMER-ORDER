% customer names
customer(zainab, 'niger', good_credit).
customer(fatima, 'minna', good_credit).
customer(malik, 'lagos', fair_credit).

% items for sale
item(bg01, bag, 2).
item(ch09, chalk, 5).
item(tis02, tissue, 4).
item(sh16, shoes, 5).
item(perf20, perfume, 2).

% Inventory record
inventory(bg01, '#15000').
inventory(ch09, '#10000').
inventory(tis02, '#20000').
inventory(sh16, '#40000').
inventory(perf20, '#30000').

% rule to find the inventory level of a name item.
item_quantity(Y,Z):- item(X,Z,A), inventory(X,Y), write(Y),fail.

inventory_report:- item_quantity(Y,Z),tab(2),
write('name of the item'), write(Y), nl,
write('quantity on hand'), write(A), nl, fail.
inventory_report(_).

% rule that define a good customer
good_customer(X):-customer(X, Y, good_credit),
write(X),tab(1), write('is a good customer'),nl, fail.

% arithemetics no 1
% ?- valid_order(zainab,bag,'1').
% to check if order is valid
 valid_order(X,Y,Z):- customer(X, A, good_credit),
 item(B, Y, Q), Q >= Z.


SELECT * 
FROM customers
WHERE phone LIKE '%9'

/*

_ slovo 
___ tri slova
% neogranicen broj slova 
%b zavrsava se sa b
b% pocinje sa b
%b% sadrzi bilo gde b

malo noviji operator je REGEXP
*/
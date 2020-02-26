select prod_name from products where prod_name regexp '1000' order by prod_name;

select prod_name from products where prod_name like '1000' order by prod_name;

select prod_name from products where prod_name regexp '.000' order by prod_name;

select prod_name from products where prod_name regexp '1000|2000' order by prod_name;

select prod_name from products where prod_name regexp '[123] Ton' order by prod_name;

select prod_name from products where prod_name regexp '1|2|3 Ton' order by prod_name;

select prod_name from products where prod_name regexp '(1|2|3) Ton' order by prod_name;

select prod_name from products where prod_name regexp '[1-5] Ton' order by prod_name;

select vend_name from vendors where vend_name regexp '.' order by vend_name;

select vend_name from vendors where vend_name regexp '\\.' order by vend_name;

select prod_name from products where prod_name regexp '\\([0-9] sticks?\\)' order by prod_name;

select prod_name from products where prod_name regexp '[[:digit:]]{4}' order by prod_name;

select prod_name from products where prod_name regexp '[0-9][0-9][0-9][0-9]' order by prod_name;

select prod_name from products where prod_name regexp '^[0-9\\.]' order by prod_name;
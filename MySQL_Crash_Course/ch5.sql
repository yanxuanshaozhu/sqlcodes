select prod_name from products;

select prod_name from products order by prod_name;

select prod_id, prod_name, prod_price from products order by prod_price, prod_name;

select prod_id, prod_price, prod_name from products order by prod_price desc;

select prod_id, prod_name, prod_price from products order by prod_price desc, prod_name;

select prod_price from products order by prod_price desc;
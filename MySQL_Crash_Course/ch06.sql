select prod_name, prod_price from products where prod_price = 2.50;

select prod_name, prod_price from products where prod_name = 'fuses';

select prod_name, prod_price from products where prod_price < 10;

select prod_name, prod_price from products where pro <= 10;

select vend_id, prod_name from products where vend_id <> 1003;
select vend_id, prod_name from products where vend_id != 1003;

select prod_name, prod_price from products where prod_price between 5 and 10;

select prod_name from products where prod_price is null;

select cust_id from customers where cust_email is null;


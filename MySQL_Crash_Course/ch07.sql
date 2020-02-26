select prod_id, prod_price, prod_name from products where vend_id = 1003 and prod_price <= 10;

select prod_name, prod_price from products where vend_id = 1002 or vend_id = 1003;

select prod_name, prod_price from products where vend_id = 1002 or vend_id = 1003 and prod_price >= 10;
-- this means: select prod_name, prod_price from products where vend_id = 1002 or (vend_id = 1003 and prod_price >= 10);

select prod_name, prod_price from products where (vend_id = 1002 or vend_id = 1003) and prod_price >= 10;

select prod_name, prod_price from products where vend_id in (1002,1003) order by prod_name;
-- this means: select prod_name, prod_price from products where vend_id = 1002 or vend_id = 1003 order by prod_name;



  


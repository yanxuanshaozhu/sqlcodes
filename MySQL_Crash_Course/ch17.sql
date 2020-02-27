select vend_id, prod_id, prod_price from products where prod_price <= 5;

select vend_id, prod_id, prod_price from products where vend_id in (1001, 1002);

select vend_id, prod_id, prod_price from products where prod_price <= 5 union select vend_id, prod_id, prod_price from products where vend_id in (1001,1002);

select vend_id, prod_id, prod_price from products where prod_price <= 5 or vend_id in (1001, 1002);

select vend_id, prod_id, prod_price from products where prod_price <= 5 union all select vend_id, prod_id, prod_price from products where vend_id in (1001, 1002);

select vend_id, prod_id, prod_price from products where prod_price <= 5 union select vend_id, prod_id, prod_price from products where vend_id in (1001, 1002) order by vend_id, prod_price;
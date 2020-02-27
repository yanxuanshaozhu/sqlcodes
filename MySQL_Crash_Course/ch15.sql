select vend_name, prod_name, prod_price from vendors, products where vendors.vend_id = products.vend_id order by vend_name, prod_name;

select vend_name, prod_name, prod_price from vendors, products order by vend_name, prod_name;

select vend_name, prod_name, prod_price from vendors join products on vendors.vend_id = products.vend_id;

select prod_name, vend_name, prod_price, quantity from orderitems, products, vendors where products.vend_id = vendors.vend_id and orderitems.prod_id = products.prod_id and order_num = 20005;

select cust_name, cust_contact from customers where cust_id in(select cust_id from orders where order_num in (select order_num from orderitems where prod_id = 'TNT2'));

select cust_name, cust_contact from customers,orders,orderitems where customers.cust_id = orders.cust_id and orderitems.order_num = orders.order_num and prod_id = 'TNT2';
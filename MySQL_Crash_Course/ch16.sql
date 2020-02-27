select concat(rtrim(vend_name),'(',rtrim(vend_country),')')as vend_title from vendors order by vend_name;

select cust_name, cust_contact from customers as c, orders as o, orderitems as oi where c.cust_id = o.cust_id and oi.order_num = o.order_num and prod_id = 'TNT2';

select prod_id,prod_name from products where vend_id = (select vend_id from products where prod_id = 'DTNTR');

select p1.prod_id, p1.prod_name from products as p1, products as p2 where p1.vend_id = p2.vend_id and p2.prod_id = 'DTNTR';

select c.*,o.order_num,o.order_date,oi.prod_id,oi.quantity,oi.item_price from customers as c, orders as o, orderitems as oi where c.cust_id = o.cust_id and oi.order_num = o.order_num and prod_id = 'FB';

select customers.cust_id,orders.order_num from customers inner join orders on customers.cust_id = orders.cust_id;

select customers.cust_id,orders.order_num from customers left outer join orders on customers.cust_id = orders.cust_id;

select customers.cust_name, customers.cust_id,count(orders.order_num) as num_ord from customers inner join orders on customers.cust_id = orders.cust_id group by customers.cust_id;

select customers.cust_name, customers.cust_id,count(orders.order_num) as num_ord from customers left outer join orders on customers.cust_id = orders.cust_id group by customers.cust_id;




select order_num from orderitems where prod_id = 'TNT2';

select cust_id from orders where order_num in (20005,20007);

select cust_id from orders where order_num in (select order_num from orderitems where prod_id = 'TNT2');

select cust_name, cust_contact from customers where cust_id in (10001,10004);

select cust_name,cust_contact from customers where cust_id in(select cust_id from orders where order_num in (select order_num from orderitems where prod_id = 'TNT2'));

select count(*) from orders where cust_id = 10001;

select cust_name, cust_state, (select count(*) from orders where orders.cust_id = customers.cust_id )as orders from customers order by cust_name;

select cust_name,cust_state, (select count(*) from orders where cust_id = cust_id) as orders from customers order by cust_name;
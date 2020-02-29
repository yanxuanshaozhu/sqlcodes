select cust_name, cust_contact from customers, orders, orderitems where customers.cust_id = orders.cust_id and orderitems.order_num = orders.order_num and prod_id = 'TNT2';

create view productcustomers as select cust_name, cust_contact, prod_id from customers, orders, orderitems where customers.cust_id = orders.cust_id and orderitems.order_num = orders.order_num;

select cus_name, cust_contact from productcustomers where prod_id = 'TNT2';

select concat(rtrim(vend_name), '(', rtrim(vend_country),')') as vend_title from vendors  order by vend_name;

create view vendorlocation as select concat(rtrim(vend_name), '(', rtrim(vend_country),')') as vend_title from vendors  order by vend_name;

select * from vendorlocation;

create view customermaillist as select cust_id, cust_name, cust_email from customers where cust_email is not null;

select * from customermaillist;

select prod_id, quantity, item_price, quantity * item_price as expanded_price from orderitems where order_num = 20005;

create view orderitemsexpanded as select order_num, prod_id, quantity, item_price, quantity * item_price as expanded_price from orderitems where order_num = 20005;

select * from orderitemsexpanded where order_num = 20005;


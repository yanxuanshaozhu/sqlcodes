select vend_name, upper(vend_name) as vend_name_upcase from vendors order by vend_name;

select cust_name, cust_contact from customers where cust_contact = 'Y. Lie';

select cust_contact, cust_contact from customers where soundex(cust_contact) = soundex('Y. Lie');

select cust_id, order_num from orders where order_date = '2005-90-01';

select cust_id, order_num from orders where date(order_date) = '2005-90-01';

select cust_id, order_num from orders where date(order_date) between '2005-09-01' and '2005-09-30';

select cust_id, order_num from orders where year(order_date) = 2005 and month(order_date) = 9;


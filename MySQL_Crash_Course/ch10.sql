select concat(vend_name,'(',vend_country,')') from vendors order by vend_name;

select concat(rtrim(vend_name),'(',rtrim(vend_country),')') from vendors order by vend_name;

select concat(rtrim(vend_name),'(',rtrim(vend_country),')') as vend_title from vendors order by vend_name;

select concat(rtrim(vend_name),'(',rtrim(vend_country),')') vend_title from vendors order by vend_name;

select prod_id, quantity, item_price from orderitems where order_num = 20005;

select prod_id, quantity, item_price, quantity * item_price as expanded_price from orderitems where order_num = 20005;




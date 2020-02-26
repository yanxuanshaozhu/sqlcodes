select count(*) as num_prods from products where vend_id = 1003;

select vend_id,count(*) as num_prods from products group by vend_id;

select vend_id,count(*) as num_prods from products group by vend_id with rollup;

select case when vend_id <=> null then 'sum' else vend_id end as 'vend_id',count(*) as num_prods from products group by vend_id with rollup;

select cust_id, count(*) as orders from orders group by cust_id having count(*) >= 2;

select vend_id,count(*) as num_prods from products where prod_price >= 10 group by vend_id having count(*) >=2;

select vend_id,count(*) as num_prods from products group by vend_id having count(*) >= 2;

select order_num, sum(quantity * item_price) as ordertotal from orderitems group by order_num having ordertotal >= 50;

select order_num,sum(quantity * item_price) as ordertotal from orderitems group by order_num having ordertotal >= 50 order by ordertotal;
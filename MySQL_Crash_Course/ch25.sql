create trigger newproduct after insert on products for each row select 'Product added';

drop trigger newproduct;

create trigger neworder after insert on orders for each row select new.order_num;

insert into orders(order_date, cust_id) values(now(), 10001);

delimiter //
create trigger deleteorder before delete on orders for each row begin insert into archive_orders(order_num, order_date, cust_id)values(old.order_num, old.order_date, old.cust_id); end//
delimiter ;

create trigger updatevendor before update on vendors for each row set new.vend_state = upper(new.vend_state);
delimiter //
create procedure productpricing() begin select avg(prod_price) as priceaverage from products; end//
delimiter ;

call productpricing();

drop procedure productpricing;

delimiter //
create procedure productpricing(out pl decimal(8,2), out ph decimal(8,2), out pa decimal(8,2)) begin select min(prod_price) into pl from products; select max(prod_price) into ph from products; select avg(prod_price) into pa from products; end//
delimiter ;

call productpricing(@pricelow, @pricehigh, @priceaverage);

select @priceaverage;

select @pricehigh, @pricelow, @priceaverage;

delimiter //
create procedure ordertotal(in onumber int, out ototal decimal(8,2)) begin select sum(item_price * quantity) from orderitems where order_num = onumber into ototal; end//
delimiter ;

call ordertotal(20005,@total);

select @total;


drop procedure ordertotal;
-- Name: ordertotal
-- Parameters: onumber = order number
-- 			   taxable = 0 if not taxable, 1 if taxable
-- 			   ototal = order total variable

delimiter //
create procedure ordertotal(in onumber int, 
							in taxable boolean, 
							out ototal decimal(8,2)
) comment 'Obtain order total, optionally adding tax' 
begin 
-- Declare variable ftotal
declare total decimal(8,2);
-- Declare tax percentage
declare taxrate int default 6;

-- Get the order total
select sum(item_price * quantity)
from orderitems
where order_num = onumber
into total;

-- Is this taxable
if taxable then 
   -- Yes, so add taxrate to the total
   select total + (total / 100 * taxrate) into total;
end if;
   -- And finally, save to out variable
   select total into ototal;
end//
delimiter ;

call ordertotal(20005, 0, @total);

select @total;

call ordertotal(20005, 1, @total);

select @total;

show create procedure ordertotal;

show procedure status like 'ordertotal';
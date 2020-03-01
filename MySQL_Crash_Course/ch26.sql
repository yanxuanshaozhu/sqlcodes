start transaction;

select * from ordertotals;
start transaction;
delete from ordertotals;
select * from ordertotals;
rollback;
select from ordertotals;

start transaction;
delete from orderitems where order_num = 20010;
delete from orders where order_num = 20010;
commit;

savepoint delete1;

rollback to savepoint delete1;

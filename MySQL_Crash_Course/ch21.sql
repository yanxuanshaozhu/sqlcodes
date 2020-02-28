create  table customers(cust_id int not null auto_increment, cust_name char(50) not null, cust_address char(50) null, cust_city char(50) null, cust_state char(5) null, cust_zip char(10) null, cust_country char(50) null, cust_contact char(50) null, cust_email char(255) null, primary key(cust_id))engine = innodb;

create  table orders(order_num int not null auto_increment, order_date datetime not null, cust_id int not null, primary key(order_num)) engine = innodb;

create table orderitems(order_num  int not null, order_item int not null, prod_id char(10) not null, quantity int not null, item_price decimal(8,2) not null, primary key (order_num, order_item)) engine=innodb;

create table orderitems(order_num  int not null, order_item int not null, prod_id char(10) not null, quantity int not null, item_price decimal(8,2) not null, primary key (order_num, order_item)) engine=innodb;

alter table vendors add vend_phone char(20);

alter table vendors drop column vend_phone;

alter table orderitems add constraint fk_orderitems_orders foreign key(order_num) references orders(order_num);

alter table orderitems add constraint fk_orderitems_products foreign key(prod_id) references products(prod_id);

alter table orders add constraint fk_orderitems_customers foreign key(cust_id) references customers(cust_id);

alter table products add constraint fk_products_vendors foreign key(vend_id) references vendors(vend_id);

drop table customers2;

rename table customers2 to customers;

rename table backup_customers to customers, backup_vendors to vendors, backup_products to products;



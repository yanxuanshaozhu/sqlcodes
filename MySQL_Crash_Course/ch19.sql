insert into customers values(null,'Pep E. LaPew', '100 Main Street', 'Los Angels', 'CA', '90046', 'USA', null, null);

insert into customers(cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country,cust_contact, cust_email) values('Pep E. LaPew', '100 Main Street', 'Los Angels', 'CA', '90046', 'USA', null, null);

insert into customers(cust_name, cust_contact, cust_email, cust_address, cust_city, cust_state,cust_zip, cust_country) values('Pep E. LaPew', null, null, '100 Main Street', 'Los Angels', 'CA', '90046', 'USA');

insert into customers(cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country) values('Pep E. LaPew', '100 Main Street', 'Los Angels', 'CA', '90046', 'USA');
insert into customers(cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country) values('M. Martian', '42 Galaxy Way', 'New York', 'NY', '11213', 'USA');

insert into customers(cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country) values('Pep E. LaPew', '100 Main Street', 'Los Angels', 'CA', '90046', 'USA'),('M. Martian', '42 Galaxy Way', 'New York', 'NY', '11213', 'USA');

insert into customers(cust_id, cust_contact, cust_email, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country) select cust_id, cust_contact, cust_email, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country from custnew;
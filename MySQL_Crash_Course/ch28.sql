use mysql;

select user from user;

creeate user ben identified by 'p@$$0rd';

rename user ben to bforta;

drop user bforta;

shiow grants for bforta;

grant select on crashcourse.* to bforta;

show grants for bforta;

grant select, insert on crashcourse.* to bforta;

set password for bforta = password('n3w p@$$0rd');

set password = password('n3w p@$$0rd');


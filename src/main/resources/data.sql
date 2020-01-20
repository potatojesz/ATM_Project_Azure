insert into roles
values(1, 'ROLE_ACCOUNT')
on duplicate key update
id=1;

insert into accounts
values('0000000000000000', 500000, '0000')
on duplicate key update
number='0000000000000000';

insert into account_roles
values('0000000000000000', 1)
on duplicate key update
role_id=1;

insert into accounts
values('1111111111111111', 99999, '1234')
on duplicate key update
number='1111111111111111';

insert into account_roles
values('1111111111111111', 1)
on duplicate key update
role_id=1;
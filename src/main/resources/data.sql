insert into roles
values(1, 'ROLE_ACCOUNT');

insert into accounts
values('0000000000000000', 500000, '0000');
insert into account_roles
values('0000000000000000', 1);

insert into accounts
values('1111111111111111', 99999, '1234');
insert into account_roles
values('1111111111111111', 1);
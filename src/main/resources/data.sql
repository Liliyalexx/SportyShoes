insert into admin(username, password) values('admin', 'admin');

insert into category(name) values('Running Shoes');
insert into category(name) values('Boots');
insert into category(name) values('High heels');

insert into product(name, price, category_id) values('Nike 90', 45.0, 1);
insert into product(name, price, category_id) values('Puma Air', 40.0, 1);
insert into product(name, price, category_id) values('Timberland', 95.0, 2);
insert into product(name, price, category_id) values('Mountain', 85.0, 2);
insert into product(name, price, category_id) values('Classic', 30.0, 3);
insert into product(name, price, category_id) values('Spring', 35.0, 3);

insert into user(first_name, last_name, email, username, password) values('Peter', 'Sterling', 'peter@test.com', 'peter', 'peter');
insert into user(first_name, last_name, email, username, password) values('Allison', 'Brock', 'allison@test.com', 'allison', 'allison');
insert into user(first_name, last_name, email, username, password) values('Frodo', 'Baggins', 'frodo@test.com', 'frodo', 'frodo');

insert into purchase(date, total, user_id) values ('2021-02-23', 90.0,	1);
insert into purchase(date, total, user_id) values ('2021-01-01', 80.0, 1);
insert into purchase(date, total, user_id) values ('2021-02-10', 75.0, 2);
insert into purchase(date, total, user_id) values ('2021-01-15', 285.0, 3);

insert into product_purchase(product_id, purchase_id, quantity) values (1, 1, 2);
insert into product_purchase(product_id, purchase_id, quantity) values (2, 2, 2);
insert into product_purchase(product_id, purchase_id, quantity) values (2, 3, 1);
insert into product_purchase(product_id, purchase_id, quantity) values (6, 3, 1);
insert into product_purchase(product_id, purchase_id, quantity) values (3, 4, 2);
insert into product_purchase(product_id, purchase_id, quantity) values (5, 4, 2);
insert into product_purchase(product_id, purchase_id, quantity) values (6, 4, 1);
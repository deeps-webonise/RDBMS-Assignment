insert into ecommerce.user_type values(1,'Inventory Manager');
insert into ecommerce.user_type values(2,'Buyer');

insert into ecommerce.users values(1,1,'Deep','deepn94@gmail.com','abcdef')
insert into ecommerce.users values(2,1,'Ajay','ajay94@gmail.com','abcdef');
insert into ecommerce.users values(3,1,'Akshay','akshay94@gmail.com','abcdef');
insert into ecommerce.users values(4,2,'Nikhil','nikhil@gmail.com','abcdef');
insert into ecommerce.users values(5,1,'Anil','anil@gmail.com','abcdef');

insert into ecommerce.payment_source values(1,'cash');
insert into ecommerce.payment_source values(2,'card');
insert into ecommerce.payment_source values(3,'coupons');

--Initially the order cost will be 0
--It will change after we enter values in order_product

insert into ecommerce.orders values(1,1,0,0,1);
insert into ecommerce.orders values(2,1,0,0,1);
insert into ecommerce.orders values(3,2,0,0,2);	
insert into ecommerce.orders values(4,2,0,0,3);
insert into ecommerce.orders values(5,3,0,0,1);

insert into ecommerce.product_color values(0,'only 1 color');
insert into ecommerce.product_color values(1,'red');
insert into ecommerce.product_color values(2,'blue');

insert into ecommerce.product values(1,'soap',50,1);
insert into ecommerce.product values(2,'soap',50,2);
insert into ecommerce.product values(3,'brush',10,0);
insert into ecommerce.product values(4,'paste',20,0);

--When these values will be added a trigger will be created which will update the cost of the order

insert into ecommerce.order_product values(1,1,1);
insert into ecommerce.order_product values(2,2,1);
insert into ecommerce.order_product values(3,3,2);
insert into ecommerce.order_product values(4,3,2);
insert into ecommerce.order_product values(5,3,3);
insert into ecommerce.order_product values(6,2,4);
insert into ecommerce.order_product values(7,1,4);






  




















CREATE TABLE ecommerce.user_type(
id int primary key not null,
user_type text
)

CREATE TABLE ecommerce.Users(
id int primary key not null,
type_id int references ecommerce.user_type(id),
text name,
email varchar,
pwd varchar
)

CREATE TABLE ecommerce.payment_source(
id int primary key NOT NULL,
discount int,
type_payment text
)

CREATE TABLE ecommerce.orders(
id int primary key not null,
user_id int references ecommerce.users(id),
cost real,
payment_id int references ecommerce.payment_source(id)
)

CREATE TABLE ecommerce.product_color(
id int primary key not null,
color text
)

CREATE TABLE ecommerce.product(
id int primary key  not null,
color_id int references ecommerce.product_color(id),
name text,
price real
)

CREATE TABLE ecommerce.order_product(
id int primary key not null,
product_id int references ecommerce.product(id),
order_id int references ecommerce.orders(id)
)















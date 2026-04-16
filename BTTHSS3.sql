use ss3;
create table products_shop (
   pro_id char(3) primary key,
   pro_name varchar(100) not null,
   pro_size enum('S','M','L','XL','XXL','3XL') default 'L',
   pro_price bigint check (pro_price > 0 ) not null
);
-- Phần 3:
update products_shop
set pro_price = 400000
where pro_id = 'P02';

update products_shop
set pro_price = pro_price * 1.1;
-- Phần 4:
delete from products_shop
where pro_id = 'P03';
-- Phần 5:
select pro_id,pro_name,pro_size,pro_price
from products_shop;

select pro_name,pro_size
from products_shop;

select pro_id,pro_name,pro_size,pro_price
from products_shop
where pro_price > 300000;
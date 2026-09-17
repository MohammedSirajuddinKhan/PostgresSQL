create table products(
Product_Id serial primary key,
Name text not null,
sku_code char(8) not null,
Price int check(Price <= 99999999),
Stock_Quantity int not null check(Stock_Quantity>0),
Is_Available boolean default true,
Category varchar(255) not null,
Added_on date current_date,
Last_update date
);

insert into products (Name,sku_code,Price,Stock_Quantity,Category)
values('Asus vivobook go 14','lpt12345',150000,17,'Laptop');
select * from products;
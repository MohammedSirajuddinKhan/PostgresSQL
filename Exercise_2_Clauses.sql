create table products(
Product_Id serial primary key,
Name text not null,
sku_code char(8) not null,
Price int check(Price <= 99999999),
Stock_Quantity int not null check(Stock_Quantity>0),
Is_Available boolean default true,
Category varchar(255) not null,
Added_on date,
Last_update date
);
select * from products;
INSERT INTO products (Name, sku_code, Price, Stock_Quantity, Is_Available, Category, Added_on, Last_update) 
VALUES 
    ('Wireless Ergonomic Mouse', 'ELEC1001', 2999, 150, true, 'Electronics', '2026-01-10', '2026-02-01'),
    ('Mechanical Gaming Keyboard', 'ELEC1002', 7499, 85, true, 'Electronics', '2026-01-12', '2026-02-10'),
    ('27-Inch 4K Monitor', 'ELEC1003', 34999, 40, true, 'Electronics', '2026-01-15', '2026-02-15'),
    ('Noise Canceling Headphones', 'ELEC1004', 12999, 65, true, 'Electronics', '2026-01-18', '2026-02-20'),
    ('USB-C Docking Station', 'ELEC1005', 5999, 110, true, 'Electronics', '2026-01-20', '2026-02-22'),
    ('Ergonomic Office Chair', 'FURN2001', 18500, 25, true, 'Furniture', '2026-01-22', '2026-03-01'),
    ('Adjustable Standing Desk', 'FURN2002', 28000, 15, true, 'Furniture', '2026-01-25', '2026-03-02'),
    ('Bookshelf 5-Tier', 'FURN2003', 6499, 30, true, 'Furniture', '2026-02-01', '2026-03-05'),
    ('Stainless Steel Water Bottle', 'HOME3001', 1299, 200, true, 'Home & Kitchen', '2026-02-03', '2026-03-06'),
    ('French Press Coffee Maker', 'HOME3002', 2499, 90, true, 'Home & Kitchen', '2026-02-05', '2026-03-08'),
    ('Non-Stick Cookware Set', 'HOME3003', 8999, 45, true, 'Home & Kitchen', '2026-02-08', '2026-03-10'),
    ('Air Fryer 4.5L', 'HOME3004', 6999, 60, true, 'Home & Kitchen', '2026-02-10', '2026-03-12'),
    ('Cotton Running Socks 3-Pack', 'APPA4001', 499, 300, true, 'Apparel', '2026-02-12', '2026-03-12'),
    ('Lightweight Running Shoes', 'APPA4002', 5499, 75, true, 'Apparel', '2026-02-15', '2026-03-14'),
    ('Waterproof Rain Jacket', 'APPA4003', 3999, 50, true, 'Apparel', '2026-02-18', '2026-03-15'),
    ('Yoga Mat 6mm Extra Thick', 'SPOR5001', 1799, 120, true, 'Sports & Fitness', '2026-02-20', '2026-03-15'),
    ('Adjustable Dumbbell Set', 'SPOR5002', 14999, 20, true, 'Sports & Fitness', '2026-02-22', '2026-03-16'),
    ('Resistance Bands Set', 'SPOR5003', 999, 250, true, 'Sports & Fitness', '2026-02-25', '2026-03-16'),
    ('Leather Notebook Journal', 'STAT6001', 799, 180, true, 'Stationery', '2026-03-01', '2026-03-17'),
    ('Gel Ink Pens 10-Pack', 'STAT6002', 399, 500, true, 'Stationery', '2026-03-05', '2026-03-18');

select name,price from products;
select * from products where category='Electronics';
select category from products group by category;
select category, count(*) from products group by category having count(*)>1;
select * from products order by price desc;
select * from products limit 3;
select name as Item_name, price as Item_price from products;
select distinct category from products;

select Price, name from products where price = (select min(price) from products);
select round(avg(price),2) from products;
select * from products;
select name, stock_quantity from products where stock_quantity > 50 and price != 299;
select category, max(price) as Max_price from products group by category;
select distinct upper(category) as category_upper from products order by category_upper;
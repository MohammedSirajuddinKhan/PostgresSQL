--creates a virtual of the case we want
select name, price,
case when (price>1000) then 'Expensive'
when price between 500 and 1000 then 'Moderate'
else 'Cheap'
end as price_tag
from products;


select * from products;
/*
 * This is multi-line comment
 */

select id, company_name, phone 
from customers
where country = 'france';

select id, customer_id, order_date, shipper, freight from orders
where freight <= 100;

-- using AND Operator return customers in OR, USA  --
select id, company_name, region, country from customers
where country = 'USA' and region = 'OR';

-- date  filtering --
select id, order_date, shipper, freight from orders
where order_date >='2019-01-01' and order_date <= '2019-12-31';

-- using Between Operator --
select id, order_date, shipper, freight from orders
where order_date between'2019-01-01' and '2019-12-31';

-- using OR Operator --
select country from customers
where country = 'USA' OR country = 'Germany';

-- order the records --
-- default ascending --
select id, company_name, country from customers
order by country;

-- descending order --
select id, company_name, country from customers
order by country desc;

-- multi-column ordering --
select id, company_name, country from customers
order by country desc, company_name asc;
















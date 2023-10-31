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

-- group by --
select country from customers group by country;

-- get count of customers per country --
select count(id) as 'Customer count', 
country from customers group by country;

-- get category and total units_in_stock --
select category, sum(units_in_stock) as 'Total Stock' 
from products
group by category;

-- all about db and tables creation, alteration and updation --
-- to create db --
create database awesome_db;

-- to drop db --
drop database awesome_db;

-- to add/create tables --
create database awesome_db;
use awesome_db;
create table awesome_table(
	id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    dept VARCHAR(255)
);

-- to delete/drop a table --
drop table awesome_table;

-- create table with -- 
-- A. not null constraint --
-- B. AUTO_INCREMENT --
-- C. PRIMARY KEY --
create table awesome_employees(
	id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255),
    dept VARCHAR(255),
    PRIMARY KEY (id)
);

-- create table with -- 
-- A. FOREIGN KEY --
create table awesome_customers(
	id INT NOT NULL AUTO_INCREMENT,
    company_name VARCHAR(255) NOT NULL,
    country VARCHAR(255),
    emp_id INT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (emp_id) references awesome_employees(id)
);

-- insert records --
insert into awesome_employees
(first_name, last_name, dept) values
('David','Peter','Computer');

insert into awesome_employees values 
(default,'Tim','Smith','Mech');


-- INNER JOIN --
select employees.first_name, employees.dept,
customers.company_name, customers.phone
from employees
INNER JOIN customers on employees.id = customers.employee_id ;

-- LEFT OUTER JOIN --






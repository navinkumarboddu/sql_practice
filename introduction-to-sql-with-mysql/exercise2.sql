/****
 * Create a SELECT statement that retrieves the following columns from the PRODUCT table.
 * Columns
 * product_name (ALIAS = 'Product')
 * category
 * units_in_stock (ALIAS = 'Units')
*/

-- Solution 1 --
select product_name as Product, category, units_in_stock as Units
from products where 
(category = 'Beverages' and discontinued != 1) or 
(category = 'Dairy Products' and discontinued != 1);

-- Solution 2 --
select product_name as Product, category, 
units_in_stock as Units, discontinued
from products where category in ('Beverages', 'Dairy Products')
 and discontinued != 1;
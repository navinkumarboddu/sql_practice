/****
 * Create a SELECT statement that retrieves the following columns from the PRODUCTS table.
 * Columns
 * product_name (ALIAS = 'Product')
 * category
 * units_price (ALIAS = 'Price')
 * 
 * Once the SELECT Statement has been created, add a WHERE Clause to filter for the following...
 * 		units_in_stock is greater than 20
 * Then add the ORDER BY and sort the results by...
 * 		Category = ASC
 * 		unit_price = DESC
*/

-- Solution --
select product_name as 'Product', category, unit_price as 'Price'
from products
where units_in_stock > 20
order by category, unit_price desc;

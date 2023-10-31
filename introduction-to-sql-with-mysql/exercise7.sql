/****
 * SQL TABLE JOINS
 * Create a SELECT Statement the combines columns 
 * from the CUSTOMERS and ORDERS tables.
 *  CUSTOMERS
 *    company_name (ALIAS = 'Company')
 *    country
 *  ORDERS
 *    order_date (ALIAS = 'Order Date')
 *    shipper
 *    freight
 *  Join the two tables as an INNER JOIN based 
 *  on the id columns
 */

-- Solution --
select customers.company_name as 'Company', customers.country,
orders.order_date as 'Order Date', orders.shipper, orders.freight
from customers
INNER JOIN
orders on customers.id = orders.customer_id;


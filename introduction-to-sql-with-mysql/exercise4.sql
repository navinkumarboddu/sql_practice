/****
 * SQL GROUP BY
 * Create a SELECT statement that retrieves the following columns from the ORDERS table.
 * Columns
 *  	order_date (ALIAS = 'Year')
 * 		freight (ALIAS = 'Freight')
 * Once the SELECT statement is complete, add the GROUP BY to group the records by the YEAR of order_date and add a SUM to the freight column.
 * ***** You can use the YEAR function to get the YEAR from the order_date year(order_date)
 */

-- Solution --
select year(order_date) as 'Year', sum(freight) as 'Freight'
from orders
group by year(order_date);

/*
 * Create a SELECT statement that retrieves the following columns from the CUSTOMERS table.
 * Columns
 * id
 * company_name (use an alias to rename to 'Company' region
 * country
 * phone 
 */
select id, company_name as Company, region, country, phone
from customers;
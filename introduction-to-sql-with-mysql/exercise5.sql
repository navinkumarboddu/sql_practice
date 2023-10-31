/****
 * SQL CREATE TABLE
 * 
 * Using the intro_sql database, 
 * create a new table called 'shippers' and 
 * include the following columns.
 *  id
 *  shipper_name
 *  phone
 *  Set the id column to be an INT type, 
 *  must contain a value and auto increment
 *  Both shipper_name and phone should be VARCHAR types
 *  Make sure to set the id column as the tables Primary Key.
 * You can run a SELECT Statement against the table, 
 * it will be empty but should show the table columns.
 */

-- Solution --
create table shippers(
	id INT NOT NULL AUTO_INCREMENT,
    shipper_name VARCHAR(255) NOT NULL,
    phone VARCHAR(255)
    PRIMARY KEY (id)
);

-- THE TABLE WILL BE EMPTY, BUT SHOWS THE COLUMNS CREATED
SELECT * FROM shippers;

/****
 * INSERTING RECORDS
 * ADD RECORDS
 * Once the table has been created, 
 * add 3 records to the table using the 
 * INSERT INTO... VALUES... Statement.
 */

-- Solution --
create table shippers(
	id INT NOT NULL AUTO_INCREMENT,
    shipper_name VARCHAR(255) NOT NULL,
    phone VARCHAR(255)
    PRIMARY KEY (id)
);

-- Insert 3 rows data --
insert into shippers (shipper_name, phone)
values ('Speedy Express', '503 555-9831');

insert into shippers 
values (default, 'United Packagers','505 555-3199'),
(default, 'Federal Shippers','505 555-9931');

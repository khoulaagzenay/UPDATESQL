/*Creation d'une base de donnée:

CREATE DATABASE UpdateQuete;

CREATE TABLE customer (
    id INT PRIMARY KEY IDENTITY(1,1),
    names VARCHAR(50),
);

INSERT INTO customer (names) VALUES('Carlo'),('Clara'),('Dun');

BEGIN TRANSACTION;
UPDATE customer 
SET names= CONCAT(customer.names, 'Z');

COMMIT;*/

SELECT* FROM customer;
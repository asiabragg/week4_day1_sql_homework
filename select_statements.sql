-- This is a comment. 
-- Hello World SQL Query

SELECT *
FROM actor;

-- Query for first name and last name in actor table
SELECT first_name, last_name
FROM actor;

-- Query for first name that equal Nick

SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a first_name that equals Nick using the LIKE clause
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'NICK';

-- Quert for first_name that starts with 3 using LIKE and WHERE with wildcard
-- Returns any first_name that starts with 'J'
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';

-- Query for first_name that starts with K using LIKE and WHERE with character length
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

-- Query to combine both wildcard and character lengths
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%th';

-- SELECT Payment Amounts using greater than statements
SELECT customer_id, amount
FROM payment
WHERE amount > '2.00';

-- SELECT Payment Amounts using less than statements
SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;

-- SELECT payment amounts less than or equal to 7.99 ORDERED in Ascending Order
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99
ORDER BY amount ASC;

-- SELECT payment amounts NOT EQUAL to 0.00
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

-- SQL Aggregrations => SUM(), AVG(), COUNT(), MIN(), MAX()
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display count of amounts paid that are greater than 5.99
-- In our payment table there are 2,423 rows where the amount is greater than 5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the average of amounts payed that are greater than 5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- Quert to display max amount greater than 7.99
-- Runs through the table of amounts that were greater then 7.99 and returned the top one
SELECT MAX(amount) as max_num_payments
FROM payment
WHERE amount > 7.99;

-- Query to display min amount greater than 7.99
SELECT MIN(amount) as min_num_payments
FROM payment
WHERE amount > 7.99;

-- Query to display customer_ids with the summed amounts for each customer
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id;

SELECT customer_id, amount
FROM payment
WHERE customer_id = 1;

-- SELECT statement with WHERE clause including a range between 7.99 and 18.99
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 7.99 AND 10.99
ORDER BY amount ASC;

-- SELECT Statement to return customer_ids that show up more than 5 times.
SELECT COUNT(customer_id), email
FROM customer
WHERE email LIKE 'j__.w%'
GROUP BY email
HAVING COUNT(customer_id) > 5;

-- 
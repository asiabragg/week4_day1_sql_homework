-- Question #1) How many actors are there with the last name 'Wahlberg'?
SELECT *
FROM actor
WHERE last_name = 'Wahlberg';
-- 2 Actors

-- Question #2) How many payments were made between $3.99 and 5.99?
SELECT *
FROM payment
WHERE amount > 3.99 AND amount < 5.99;
-- 3431 Payments

-- Question #3) What film does the store have the most of (search in inventory)?
SELECT MAX(film_id)
FROM inventory;

-- Question #4) How many customers have the last name 'William'?
SELECT *
FROM customer
WHERE last_name = 'William';
-- 0 Customers

-- Question #5) What store employee (get the id) sold the most rentals?
SELECT MAX(staff_id)
FROM payment
GROUP BY staff_id;

-- Question #6) How many different district names are there?
SELECT COUNT(district)
FROM address;

-- Question #7) What film has the most actors in it? (use film_actor and get film_id)
SELECT MAX(film_id)
FROM film_actor;

-- Question #8) From store_id 1, how many customers have a last name ending with 'es'? (Use customer table)
SELECT store_id, last_name
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;

-- Question #9) How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT amount
FROM payment
WHERE customer_id > 380 AND customer_id < 430
LIMIT 250;

-- Question #10) Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT DISTINCT (rating)
FROM film;

SELECT MAX(rating)
FROM film;
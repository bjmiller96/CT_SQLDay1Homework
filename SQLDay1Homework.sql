-- Question 1: How many actors are there with the last name 'Wahlberg'? || Answer: 2
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';

-- Question 2: How many payments were made between $3.99 and $ 5.99? || Answer: 2
 SELECT amount
 FROM payment
 WHERE amount > 3.99
 AND amount < 5.99;

-- Question 3: What film does the store have the most of? (search in inventory) || Answer: Zorro Ark
SELECT inventory_id, film_id
FROM inventory 
GROUP BY inventory_id 
ORDER BY inventory_id DESC;

-- Question 4: How many customers have the last name ‘William’? || Answer: 0
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';

-- Question 5: What store employee (get the id) sold the most rentals? || Answer: staff_id: 1
SELECT staff_id, COUNT(rental_id)
FROM rental 
GROUP BY staff_id;

-- Question 6: How many different district names are there? || Answer: 378
SELECT COUNT(DISTINCT district)
FROM address;

-- Question 7: What film has the most actors in it? (use film_actor table and get film_id) || Answer: film_id: 508
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

-- Question 8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) || Answer: 13
SELECT store_id, COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id
ORDER BY COUNT(last_name) DESC;

-- Question 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250) || Answer: 3
SELECT amount, COUNT(payment_id)
FROM payment 
WHERE customer_id >= 380 AND customer_id <= 430
GROUP BY amount 
HAVING COUNT(payment_id) > 250;

-- Question 10: Within the film table, how many rating categories are there? And what rating has the most movies total? || Answer: 5 Categories, PG-13
SELECT rating, COUNT(DISTINCT rating), COUNT(film_id) 
FROM film 
GROUP BY rating
ORDER BY COUNT(film_id) DESC;
























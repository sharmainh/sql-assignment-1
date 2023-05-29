-- 1. How many actors are there with the last name ‘Wahlberg’? 
SELECT count(last_name) FROM actor WHERE last_name = 'Wahlberg'; -- 2 actors with the last name ‘Wahlberg’

-- 2. How many payments were made between $3.99 and $5.99? -- Zero payments were made between $3.99 and $5.99  
SELECT amount, count(amount)
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99
GROUP BY amount;


-- 3. What film does the store have the most of? (search in inventory) -- Academy Dinosaur, Crossroads Casualties 
SELECT film_id, count(film_id) as most_films
FROM inventory
GROUP BY film_id
ORDER BY most_films DESC;


-- 4. How many customers have the last name ‘William’? -- Count = 0 
SELECT count(last_name) FROM customer WHERE last_name LIKE 'William';


-- 5. What store employee (get the id) sold the most rentals? Larry David (staff_id # 1) 
SELECT count(customer_id) FROM rental GROUP BY staff_id;

--SELECT* --These statements are used to find the name of the salesperson that matches the id
--FROM saleperson;

-- 6. How many different district names are there? 378 different districts
SELECT count(distinct district)
FROM address;



-- 7. What film has the most actors in it? (use film_actor table and get film_id) --  Lambs Cincinatti (film_id: 508)
SELECT film_id, count(actor_id) as total_actors
FROM film_actor 
GROUP BY film_id
ORDER BY total_actors DESC;


--SELECT title, film_id
--FROM film;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) -- 21 customers have a last name ending with ‘es’
SELECT count(store_id)
FROM customer
WHERE last_name like '%es';


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers -- 0 customers 
-- with ids between 380 and 430? (use group by and having > 250)
SELECT customer_id, count(rental_date) as num_rentals
FROM rental
WHERE customer_id BETWEEN 380 AND 430
GROUP BY customer_id
HAVING count(rental_date) > 250
ORDER BY customer_id DESC;

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

SELECT rating as rating_categories, count(film) as total_movies FROM film GROUP BY rating ORDER BY total_movies DESC;














-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name

SELECT title FROM film
LEFT JOIN inventory ON inventory.film_id = film.film_id
LEFT JOIN rental ON rental.inventory_id = inventory.inventory_id
LEFT JOIN customer ON customer.customer_id = rental.customer_id
LEFT JOIN address ON address.address_id = customer.address_id
LEFT JOIN city ON city.city_id = address.city_id
LEFT JOIN country ON country.country_id = city.country_id
WHERE country.country = 'Peru';
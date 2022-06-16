-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

SELECT city.city, SUM(payment.amount) FROM city
LEFT JOIN address ON address.city_id = city.city_id
LEFT JOIN customer ON customer.address_id = address.address_id
LEFT JOIN payment ON payment.customer_id = customer.customer_id
GROUP BY city.city_id
ORDER BY COALESCE(SUM(payment.amount),0) DESC
LIMIT 10;
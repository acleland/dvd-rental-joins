-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental

SELECT rental_date FROM
customer INNER JOIN rental ON  rental.customer_id = customer.customer_id
WHERE customer.first_name = 'Patricia'
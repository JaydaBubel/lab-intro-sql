use sakila;

-- Get all the data from tables actor, film and customer.
select * from sakila.actor, sakila.film, sakila.customer;

-- Get film titles
select title
from sakila.film;

-- Get unique list of film languages under the alias language. 
SELECT DISTINCT name AS language
FROM language;
select name
from sakila.language;

-- 5.1 Find out how many stores does the company have? (Answer: 2)
select address_id
from sakila.store;
SELECT COUNT(address_id) AS row_count
FROM sakila.store;

-- 5.2 Find out how many employees staff does the company have? (Answer: 2)
select count(staff_id) from sakila.staff;

-- 5.3 Return a list of employee first names only? (Answer: Mike and john)
select first_name
from sakila.staff;

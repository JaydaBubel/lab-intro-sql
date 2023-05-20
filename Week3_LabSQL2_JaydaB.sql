use sakila;

-- Select all the actors with the first name ‘Scarlett’. (Answer: 2, but no Johanssons).
Select *
From actor
Where first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’. (Answer: 3, but no Scarletts).
Select *
From actor
Where last_name = 'Johansson';

-- How many films (movies) are available for rent? (answer: 1000)
select count(title) from sakila.film;

-- How many films have been rented?

select title, rental_duration
from sakila.film;
SELECT COUNT(DISTINCT title, rental_duration) AS count_rented_movies
From sakila.film;
Where rental_duration <> 0;

-- What is the shortest and longest rental period? (3 is shortest, 7 is longest)

select * from sakila.film
order by rental_duration desc
limit 5;

select * from sakila.film
order by rental_duration asc
limit 5;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration. (185 and 26 Min.)
select *, length as max_duration
from sakila.film
order by length desc
limit 5;

select *, length as min_duration
from sakila.film
order by length asc
limit 5;

-- What's the average movie duration? (1:55,27)
-- What's the average movie duration expressed in format (hours, minutes)?
select CONCAT('1', ':', AVG(length)-60) AS fixed_time from film;

-- How many movies longer than 3 hours? (Answer: 39)
select count(*) as movies_count
from film
where length > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org. (already formatted)
select first_name, last_name, email
from sakila.customer;

-- What's the length of the longest film title? 'ARACHNOPHOBIA ROLLERCOASTER'

select title
from film
order by length(title) desc
limit 1;
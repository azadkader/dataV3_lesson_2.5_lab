use sakila;
show tables;

select first_name,last_name from actor
where first_name = "SCARLETT";

select * from inventory;
select count(inventory_id) from inventory;
select  count(distinct film_id) from inventory;

select * from film;
select max(length) as max_duration from film;
select min(length) as min_duration from film;

Select DATE_FORMAT(SEC_TO_TIME(AVG(length) * 60), '%H:%i') as average_movie_time from film;

select count(distinct last_name) from actor;

select * from rental;
SELECT DATEDIFF(max(rental_date),min(rental_date)) AS days_of_operation FROM rental;

select * from rental;
SELECT rental_date, 
       DATE_FORMAT(rental_date, '%M') AS month, 
       DATE_FORMAT(rental_date, '%W') AS weekday 
FROM rental
limit 20;

SELECT rental_date, 
       DATE_FORMAT(rental_date, '%W') AS weekday,
       CASE 
           WHEN DAYOFWEEK(rental_date) IN (1, 7) THEN 'weekend'
           ELSE 'workday'
       END AS day_type
FROM rental;

select title, release_year from film;

select * from film;
select title from film
where title like "%ARMAGEDDON%";


select title from film
where title like "%APOLLO";

select title, length from film
order by length desc
limit 10;

select count(special_features) as  behind_the_scenes_count from film
where special_features like "%Behind the Scenes%";
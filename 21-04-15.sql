show databases;
use world;
show tables;
select * from countrylanguage;

-- 1번 문제
select * from countrylanguage where percentage not in (100) order by percentage desc limit 5;
-- 2번 문제
SELECT  CountryCode, count(countrycode) FROM countrylanguage GROUP BY CountryCode having countrycode like 'z%' limit 3;
-- 3번 문제
SELECT  countrycode, Language, IsOfficial FROM countrylanguage GROUP BY CountryCode limit 5;
-- 4번 문제
SELECT countrycode, percentage from countrylanguage group by countrycode order by countrycode desc, percentage asc limit 5;


use sakila;
show tables;
select * from actor;

-- 5번 문제
SELECT * FROM actor where first_name like 'j%' and last_name like 'd%' order by last_name desc limit 4;

-- 6번 문제
SELECT * FROM actor where last_name IN ('guiness') limit 3;
update actor set first_name = 'yeji' where actor_id = 1;

-- 7번 문제
select address, city_id from address order by city_id asc limit 5;

-- 8번 문제
select city_id, postal_code from address where city_id like '3%' and postal_code like '3%' limit 4;















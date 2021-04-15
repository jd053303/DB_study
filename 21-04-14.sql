show databases;
use world;

show tables;

select * from country;

-- 1번 / select: name, Code (조건 -> 이름 오름차순, Code에서 AFG를 제외한 값)
select Name, Code from country where Code NOT IN ('AFG') order by Name asc;

-- 2번 / select: 모든 정보 (조건 -> LifeExpectancy와 capital 값이 null인 값을 code를 기준으로 내림차순 정렬)
select * from country where LifeExpectancy is null and capital is null order by code desc;

-- 3번 / select: code, name, Capital (조건 -> region이 C로 시작하고 capital이 1500이상인 값을 10개까지)
select code, Continent, region, capital from country where region like "C%" and capital >= 1500 limit 10;

-- 4번 / select : 모든 정보 (조건 -> continent의 중복된 값은 제외, LifeExpectancy의 소수점 버림 )
select distinct(continent), ROUND(LifeExpectancy) from country;

-- 5번 / select :  (조건 -> indepYear이 20000 이상, capital이 3000개 이상, continent가 Asia인 값의 개수)


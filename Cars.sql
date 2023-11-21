
-- READ DATA --
select * from car_details;

-- To get a count of Totall records --
select count(*) from car_details;

-- How many cars avialble in 2023 --
SELECT COUNT(*)
FROM car_details
WHERE year = 2023;

-- How many cars avialble in 2020,2021,2022 --
SELECT COUNT(*)
FROM car_details
WHERE year IN (2020, 2021, 2022) group by year;

-- The total of all call by years --
select year, count(*) 
from car_details
group by year;

-- How many diesel cars in 2020 --
SELECT year, COUNT(*)
FROM car_details
WHERE fuel = 'Diesel' AND year = 2020
group by year;

-- How many petrol cars in 2020 --
select year, count(*)
from car_details
where fuel = 'Petrol' and year = 2020;

-- All the fuel cars come by all years --
select year, count(*)
from car_details
where fuel in ('Petrol', 'Diesel','CNG')
group by year;

-- Which year had more than 100 cars --
select year, count(*)
from car_details
group by year having count(*)>100;

-- All cars count detail between 2015 and 2023 -- 
select count(*) as total_car
from car_details
where year between 2015 and 2023;

-- All cars detail between 2015 and 2023 --
select * 
from car_details
where year between 2015 and 2023;
 


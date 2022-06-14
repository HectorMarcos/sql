#1
select * from movies;
select director from movies;
select title, director from movies;
select title, year from movies;
select * from movies;

#2
select * from movies where id = 6;
select * from movies where year between 2000 and 2010
select * from movies where year < 2000 or year > 2010;
select * from movies order by year limit 5;

#3
SELECT * FROM movies where title like 'Toy%';
SELECT * FROM movies where director = 'John Lasseter';
SELECT * FROM movies where director != 'John Lasseter';
SELECT * FROM movies where title like 'WALL-%';

#4
SELECT * FROM movies group by director;
SELECT * FROM movies order by year desc limit 4;
SELECT * FROM movies order by title limit 5;
SELECT * FROM movies order by title limit 5 offset 5;

#5
select city, population from north_american_cities where country = 'Canada';
select * from north_american_cities where country = 'United States' order by latitude desc;
select * from north_american_cities where longitude < (select longitude from north_american_cities where city = 'Chicago') order by longitude;
select * from north_american_cities where country = 'Mexico' order by population desc limit 2;
select * from north_american_cities where country = 'United States' order by population desc limit 2 offset 2;

#6
SELECT * FROM movies inner join boxoffice on id = movie_id;
SELECT * FROM movies inner join boxoffice on id = movie_id where international_sales > domestic_sales;
SELECT * FROM movies inner join boxoffice on id = movie_id order by rating desc

#7
SELECT building FROM employees inner join buildings on building = building_name group by building;
select building_name, capacity from buildings;
select DISTINCT building_name, role from buildings left join employees on building = building_name;

#8
SELECT name, role, building FROM employees right join building on building = building_name;
select name, role from employees where building is null;
select building_name from buildings left join employees on building_name = building where building is null;

#9
SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions from movies inner join boxoffice on movies.id = boxoffice.movie_id; 
select title, (rating) * 10 as score_percent from movies inner join boxoffice on movies.Id = boxoffice.Movie_id;
select title from movies where year % 2 = 0 

#10
SELECT name, max(years_employed) from employees;
select role, avg(years_employed) from employees group by role;
select building, sum (years_employed) from employees group by building;

#11
select count(name) as Artists from employees where role = 'Artist';
select role, count(name) as Employees from Employees group by role;
SELECT role, SUM(years_employed) FROM employees GROUP BY role HAVING role = "Engineer";
select role, sum(years_employed) from Employees where role = 'Engineer' group by role ;

#12
select Director, count(title) from movies group by director;
select director, sum(domestic_sales) + sum(international_sales) from boxoffice inner join movies on movie_id = id group by director;

#13
INSERT INTO movies
(id, title, director, year, length_minutes)
VALUES (15, 'Toy Story 4', 'John Lasseter', 2022, 250);

INSERT INTO boxoffice
(movie_id, rating, domestic_sales, international_sales)
VALUES (15, 8.7, 340000000, 270000000);

#14
UPDATE Movies
SET director = 'John Lasseter'
WHERE id = 2;

UPDATE Movies
SET year = 1999
WHERE id = 3;

UPDATE Movies
SET title = 'Toy Story 3', director = 'Lee Unkrich'
WHERE id = 11;

#15
delete from movies
where year < 2005

delete from movies
where director = 'Andrew Stanton';

#16
CREATE TABLE Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);

#17
ALTER TABLE movies
ADD Aspect_ratio 
    DEFAULT float;

ALTER TABLE movies
ADD Language 
    DEFAULT 'English';

#18
DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Boxoffice;

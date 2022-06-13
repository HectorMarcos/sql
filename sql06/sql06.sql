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

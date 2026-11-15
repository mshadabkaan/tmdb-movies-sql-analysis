USE movies_project;
SELECT * FROM tmdb_5000_movies LIMIT 1; 
SELECT COUNT(*) FROM tmdb_5000_movies;
select count(*),
min(release_date), MAX(release_date)
from tmdb_5000_movies;
SELECT release_date FROM tmdb_5000_movies LIMIT 5;
SELECT MIN(STR_TO_DATE(release_date, '%d-%m-%Y')), MAX(STR_TO_DATE(release_date, '%d-%m-%Y')) FROM tmdb_5000_movies;
select title, revenue from tmdb_5000_movies order by  revenue desc limit 10;
SELECT AVG(budget), AVG(revenue) from tmdb_5000_movies;
SELECT RIGHT(release_date, 4) AS year, AVG(revenue) FROM tmdb_5000_movies GROUP BY year ORDER BY AVG(revenue) DESC;
SELECT title, revenue - budget AS profit FROM tmdb_5000_movies O;RDER BY profit DESC LIMIT 10;
select title, title, vote_average from tmdb_5000_movies where vote_count > 1000 order by vote_average desc;
select RIGHT(release_date, 4) as year, COUNT(*) from tmdb_5000_movies group by year order by COUNT(*) desc limit 1;
 
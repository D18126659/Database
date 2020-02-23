ALTER SESSION SET CURRENT_SCHEMA = Salghamdi;

Describe POBYRNE.M_Movies;
--Q1
SELECT COUNT (MTITLE) as Num from POBYRNE.M_movies;

--Q2
SELECT distinct (Genre) as Genre from POBYRNE.M_movies;

--Q3
SELECT COUNT(Genre),Genre from POBYRNE.M_movies 
group by genre order by Genre;

--Q4
Select Genre,max(Running_Time),min(Running_Time) 
from POBYRNE.M_movies group by genre order by genre;

--Q5
SELECT COUNT(Genre),Genre from POBYRNE.M_movies 
WHERE RUNNING_TIME >90 and running_time <180
group by genre order by Genre;

--Q6
SELECT count(*) genre,Rating from POBYRNE.M_movies 
group by Rating Order by Genre ;

--Q7
select rating, count(*)
From POBYRNE.M_movies
WHERE BOX_OFFICE >66
GROUP BY Rating;


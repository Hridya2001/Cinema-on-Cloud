--Schema-level & Table Operations

SHOW DATABASES;
USE imdb_data;
SHOW TABLES;
DESCRIBE title_ratings;
DESCRIBE title_basics;

--Join and Table Creation

CREATE TABLE high_rated_titles AS
SELECT b.primaryTitle, b.startYear AS released_year, r.numVotes
FROM title_basics b
JOIN title_ratings r ON b.tconst = r.tconst
WHERE b.titleType = 'movie';

--Analysis Query

SELECT primaryTitle, released_year, numVotes
FROM high_rated_titles
WHERE released_year BETWEEN 2015 AND 2025
ORDER BY numVotes DESC
LIMIT 20;


-- Question 1
SELECT id,title,genres 
FROM movies.movies;

-- Question 2
SELECT id,title 
FROM movies.movies
LIMIT 10;

-- Question 3
SELECT id,title 
FROM movies.movies
WHERE id = 485;

-- Question 4 
SELECT id 
FROM movies.movies
WHERE title = 'Made in America (1993)';

-- Question 5
SELECT title 
FROM movies.movies
ORDER BY title ASC
LIMIT 10;

-- Question 6
SELECT id,title,genres
FROM movies.movies
WHERE title LIKE '%2002%';

-- Question 7
SELECT id,title,genres
FROM movies.movies
WHERE title  LIKE 'godfather%' AND TITLE NOT LIKE '%PART%';

-- Question 8
SELECT id,title,genres
FROM movies.movies
WHERE genres LIKE '%comedy%';

-- Question 9
SELECT id,title,genres
FROM movies.movies
WHERE genres LIKE '%comedy%'
AND title LIKE '%2000%';

-- Question 10
SELECT id,title,genres
FROM movies.movies
WHERE genres LIKE '%comedy%' 
AND title LIKE '%death%';

-- Question 11
SELECT id,title,genres
FROM movies.movies
WHERE (title LIKE '%2001%' OR TITLE LIKE '%2002%')
AND title LIKE '%Super%' ;

-- Question 12
"created-table"

-- Question 13
INSERT INTO movies.actor(name, character_name, movie_id,year_of_birth)
VALUE 
("Marko","Panda","1","1997"),
("Marko","Panda","1","1997"),
("Marko","Panda","1","1997"),
("Marko","Panda","1","1997"),
("Marko","Panda","1","1997"),
("Marko","Panda","1","1997"),
("Marko","Panda","1","1997"),
("Marko","Panda","1","1997"),
("Marko","Panda","1","1997"),
("Marko","Panda","1","1997"),
("Marko","Panda","10","1997"),
("Marko","Panda","10","1997"),
("Marko","Panda","10","1997"),
("Marko","Panda","10","1997"),
("Marko","Panda","10","1997"),
("Marko","Panda","10","1997"),
("Marko","Panda","10","1997"),
("Marko","Panda","10","1997"),
("Marko","Panda","10","1997"),
("Marko","Panda","10","1997"),
("Marko","Panda","2","1997"),
("Marko","Panda","2","1997"),
("Marko","Panda","2","1997"),
("Marko","Panda","2","1997"),
("Marko","Panda","2","1997"),
("Marko","Panda","2","1997"),
("Marko","Panda","2","1997"),
("Marko","Panda","2","1997"),
("Marko","Panda","2","1997"),
("Marko","Panda","2","1997")

-- Question 14
UPDATE movies.movies
SET MPAA_rating = "3.0"
WHERE id=3 or id=4 or id=5 or id=6 or id=7

-- Question 15
SELECT m.title, r.rating
FROM movies.ratings r
LEFT JOIN movies.movies m
ON r.movie_Id = m.id
WHERE m.title LIKE 'godfather, the%';

-- Question 16

SELECT m.title, r.rating
from movies.movies m
 LEFT JOIN movies.ratings r ON m.id = r.movie_id
where m.title like "godfather, the%"
order by r.timestamp DESC

-- Question 17

SELECT m.title, l.imdb_Id
from movie.movies m
 LEFT JOIN movie.links l ON m.id = l.movie_id
where m.genres like "%comedy%"  and m.title like "%2005%"




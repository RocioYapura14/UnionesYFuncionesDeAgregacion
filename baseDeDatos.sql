-- Micro desafío - Paso 1:
SELECT title, first_name, last_name
FROM episodes
INNER JOIN actor_episode ON episodes.id = episode_id
INNER JOIN actors ON actor_id = actors.id;

-- Micro desafío - Paso 2:
SELECT DISTINCT title, first_name, last_name
FROM movies
INNER JOIN actor_movie ON movies.id = movie_id
INNER JOIN actors ON actors.id = actor_id
WHERE title LIKE "%Guerra%";

-- Micro desafío - Paso 3:
SELECT movies.id, title, ifnull (name,"no tiene genero")
FROM movies
LEFT JOIN genres ON genre_id = genres.id;

-- Micro desafío - Paso 4:
SELECT title, datediff(end_date, release_date) AS duracion
FROM series;

-- Micro desafío - Paso 5:
SELECT first_name
FROM actors
WHERE LENGTH(first_name) > 6;

SELECT  COUNT(*) AS "total"
FROM episodes;

SELECT series.title, COUNT(*) AS temporadas
FROM seasons
INNER JOIN series ON series.id = seasons.serie_id
GROUP BY series.title
HAVING COUNT(*);

SELECT  genres.name, count(*) AS generos
FROM movies
INNER JOIN genres ON  genre_id = genres.id
GROUP BY genres.name
HAVING count(*) >= 3;
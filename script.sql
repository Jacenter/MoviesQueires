--movies queries
INSERT INTO movies (Title, Runtime, Genre, IMDB_score, Rating)
VALUES
('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG'),
('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'),
('Waltz With Bashir', 90, 'Documentary', 8.0, 'R'),
('Spaceballs', 96, 'Comedy', 7.1, 'PG'),
('Monsters Inc.', 92, 'Animation', 8.1, 'G')

--------------------------------------------------------------------

SELECT * FROM MOVIES WHERE Genre = 'Sci-Fi'

--------------------------------------------------------------------

SELECT * FROM MOVIES WHERE IMDB_Score >= 6.5;

-------------------------------------------------------------------

SELECT * FROM MOVIES WHERE Rating = 'G' OR Rating = 'PG' AND Runtime < 100;

--------------------------------------------------------------------

SELECT Genre, AVG(Runtime) FROM MOVIES WHERE IMDB_score < 7.5 GROUP BY Genre;

--------------------------------------------------------------------

UPDATE Movies SET Rating = 'R' WHERE Title = 'Spaceballs';

--------------------------------------------------------------------

SELECT ID, RATING from MOVIES WHERE Genre = 'Horror' OR Genre = 'Documentary';

--------------------------------------------------------------------

SELECT Rating, AVG(IMDB_score) FROM MOVIES GROUP BY Rating;

--------------------------------------------------------------------

SELECT Rating, MIN(IMDB_score) FROM MOVIES GROUP BY Rating;

--------------------------------------------------------------------

SELECT Rating, MAX (IMDB_score) FROM MOVIES GROUP BY Rating;

--------------------------------------------------------------------

SELECT Rating, AVG (IMDB_score) FROM MOVIES GROUP BY Rating HAVING COUNT (*) > 1;

--------------------------------------------------------------------

SELECT Rating, MAX(IMDB_score) FROM MOVIES GROUP BY Rating HAVING COUNT (*) > 1;

--------------------------------------------------------------------

SELECT Rating, MIN(IMDB_score) FROM MOVIES GROUP BY Rating HAVING COUNT (*) > 1;

--------------------------------------------------------------------

DELETE FROM MOVIES WHERE Rating = 'R';

result of movies afterwards

SELECT * FROM MOVIES;
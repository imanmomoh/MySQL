USE my_cars;
CREATE TABLE my_best_movies
(
    id INT NOT NULL
    AUTO_INCREMENT PRIMARY KEY,
   title VARCHAR
    (220),
   release_date DATE,
   rating DECIMAL
    (2,1) 
);
    INSERT INTO my_best_movies
        (title, release_date, rating)
    values
        ("The Jungle Book", "1967-10-67", 7.6),
        ("The Karate Kid", "1984-06-22", 7.3),
        ("Shaolin Temple", "1982-01-21", 6.9),
        ("Titanic", "1997-12-19", 7.8),
        ("Shaolin Soccer", "2001-07-01", 7.3),
        ("Norbit", "2007-02-09", 4.1),
        ("The nutty Professor", "1996-06-28", 7.2),
        (" Friday", "1995-01-13", 7.3),
        (" Rush hour one ", "1998-09-18", 7.0),
        (" Rush hour Two ", "2001-08-03", 7.0);
    SELECT *
    FROM top_movies
    WHERE title LIKE "%s%"
    ORDER BY release_date DESC;
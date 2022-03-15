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


    ALTER TABLE my_best_movies
ADD first_name VARCHAR (220)
    ,
    ADD last_name VARCHAR
    (220);

    UPDATE my_best_movies SET first_name = "Wolfgang", last_name = "Reitherman"
 WHERE id =1;
    UPDATE my_best_movies SET first_name = "John", last_name = "Avildsen"
 WHERE id =2;
    UPDATE my_best_movies SET first_name = "Hsin-Yen", last_name = "Chang"
 WHERE id =3;
    UPDATE my_best_movies SET first_name = "James", last_name = "Cameron"
 WHERE id =4;
    UPDATE my_best_movies SET first_name = "Steven", last_name = "Chow"
 WHERE id =5;

    UPDATE my_best_movies SET first_name = "Brian", last_name = "Robbins"
 WHERE id =6;
    UPDATE my_best_movies SET first_name = "Tom", last_name = "Shadyac"
 WHERE id =7;
    UPDATE my_best_movies SET first_name = "F.Gary", last_name = "Gray"
 WHERE id =8;
    UPDATE my_best_movies SET first_name = "Brett", last_name = "Ratner"
 WHERE id =9;
    UPDATE my_best_movies SET first_name = "Brett", last_name = "Ratner"
 WHERE id =10;

    -- Concat first name and last name to create full name
    SELECT CONCAT(first_name, " ", last_name) AS full_name
    FROM my_best_movies;

    -- Ordering by last name alphabetically
    SELECT *
    FROM my_best_movies
    ORDER BY last_name;

    -- Deletes movies where the last name is between R-Z alphabetically
    DELETE FROM my_best_movies
WHERE last_name BETWEEN "R" AND "Z";

    -- Order by last name then display the first 3 entries
    SELECT *
    FROM my_best_movies
    ORDER BY last_name
    LIMIT 3;
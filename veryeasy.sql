CREATE DATABASE my_cars;

USE my_cars;

CREATE TABLE cars
(
    id INT NOT NULL
    AUTO_INCREMENT PRIMARY KEY,
car_make VARCHAR
    (90),
car_model VARCHAR
    (90),
car_year INT
);
    INSERT INTO cars
        (car_make,car_model, car_year)
    VALUES
        ("Dodge", "Charger", 2022);

    INSERT INTO cars
        (car_make,car_model, car_year)
    VALUES
        ("Mazda", "cx5", 2022);

    INSERT INTO cars
        (car_make, car_model, car_year)
    VALUES
        ("Jeep", "Wrangler", 2022);

    SELECT *
    FROM my_cars
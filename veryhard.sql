USE my_cars;

-- Create Table within Database with 4 columns. ID will update automatically
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

    -- Insert Data into table (1st Entry)
    INSERT INTO cars
        (car_make, car_model, car_year)
    VALUES
        ("Toyota", "Camry", 2020),
        ("Dodge", "Challenger", 2020),
        ("Jeep", "Chereoke", 2020);

    -- Insert Data into table (2nd Entry)
    INSERT INTO cars
        (car_make, car_model, car_year)
    VALUES
        ("Volkwagen", "Toureg", 2018),
        ("Audi", "Premium", 2017),
        ("Lamborghini", "Urus", 2020);

    -- Add two new columns for prices and colors
    ALTER TABLE cars
ADD price INT
    ,
    ADD color VARCHAR
    (50);

    -- Update for all cars with price and color values
    UPDATE cars 
SET price = 34400, color = "Matte Black"
WHERE id = 1;

    UPDATE cars 
SET price = 30000, color = "Red"
WHERE id = 2;

    UPDATE cars 
SET price = 18900, color = "Green"
WHERE id = 3;

    UPDATE cars 
SET price = 28900, color = "Grey"
WHERE id = 4;

    UPDATE cars 
SET price = 65000, color = "Orange"
WHERE id = 5;

    UPDATE cars 
SET price = 200000, color = "Black"
WHERE id = 6;


    -- JOIN make and model under one column name
    SELECT CONCAT(car_make, " ", car_model) AS car_make_and_car_model
    FROM cars;

    -- Display all car makes as well as the number of times these car models repeat
    SELECT car_make AS Make, COUNT(car_make) AS Matches
    FROM cars
    GROUP BY car_make;

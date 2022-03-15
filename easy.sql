CREATE TABLE books (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR
(100),
    publish_date DATE,
    author_firstName VARCHAR
(20),
    author_lastName VARCHAR
(20)
);

-- Insert Data into table
INSERT INTO books
    (title, publish_date, author_firstName, author_lastName)
VALUES
    ("Things Fall Apart", "1958-07-02", "Chinua", "Achebe"),
    ("The Notebook", "1996-10-01", "Nicholas", "Sparks"),
    ("So Long A Letter", "1979-08-05", "Mariama", "Bâ"),
    ("Rich Dad Poor Dad", "1997-06-09", "Robert", "Kiyosaki"),
    ("Aresene Lupin", "1907-06-10", "Maurice", "Leblanc");


-- Deletes Arsene Lupin  as it's the oldest book by sorting the table then removing one item
DELETE FROM books
ORDER BY publish_date
LIMIT 1;

-- Returns count for the number of books entered by the title
SELECT COUNT(*) AS Sum
FROM books;


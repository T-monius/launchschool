# db_test.sql

CREATE TABLE books1 (
  id serial PRIMARY KEY,
  title text UNIQUE,
  publication_date timestamp,
  page_count integer
);

ALTER TABLE books
ALTER COLUMN title SET NOT NULL,
ALTER COLUMN publication_date SET NOT NULL,
ALTER COLUMN page_count SET NOT NULL;

ALTER TABLE books
ADD CHECK(title <> '');

INSERT INTO books (title, publication_date, page_count)
VALUES('Hyperion', '1989-05-26', 482),
('Ender''s Game', '1994-07-15', 324),
('Foundation', '1951-06-01', 256),
('I, Robot', '1950-12-02', 225);

ALTER TABLE books
ADD COLUMN stock_price numeric(5, 2),
ADD COLUMN promo_price numeric(5, 2);

ALTER TABLE books
ADD CHECK (promo_price < stock_price);

CREATE TABLE authors(
id serial PRIMARY KEY,
name text NOT NULL
);

INSERT INTO authors (name)
VALUES('Dan Simmons'),
('Isaac Asimov'),
('Orson Scott Card');

ALTER TABLE books
ADD COLUMN author_id integer REFERENCES authors(id) ON DELETE CASCADE;

UPDATE books SET author_id = 1
WHERE title = 'Hyperion' AND id = 1;

UPDATE books SET author_id = 2
WHERE title = 'Foundation' OR title = 'I, Robot';

UPDATE books SET author_id = 3
WHERE title = 'Ender''s Game' AND id = 2;

# 9

UPDATE books SET stock_price = stock_price + (stock_price * .1)
WHERE author_id IN (SELECT id FROM authors WHERE name = 'Isaac Asimov')
;

UPDATE books SET promo_price = promo_price + (promo_price * .1)
WHERE author_id IN (SELECT id FROM authors WHERE name = 'Isaac Asimov')
;

# 10
INSERT INTO authors (name)
VALUES('Douglas Adams');

SELECT name AS author, title, EXTRACT(YEAR FROM publication_date) AS year_published FROM authors AS a
LEFT JOIN books AS b ON a.id = b.author_id
ORDER BY year_published;

# 11
SELECT name, COUNT(author_id) AS number_of_books, MAX(page_count) AS maximum_page_count FROM authors AS a
JOIN books AS b ON a.id = b.author_id
GROUP BY name
HAVING COUNT(author_id) > 1;

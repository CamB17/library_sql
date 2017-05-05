-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns
	A:	SELECT * FROM books, authors;

-- Get all information about all authors
	A:	FROM authors;

-- Get just the name and birth year of all authors
	A:	SELECT birth_year FROM authors;

-- Get all authors born in the 20th centruy or later
	A:	SELECT name FROM authors WHERE birth_year >= 1901;

-- Get all authors born in the USA
	A:	SELECT name FROM authors WHERE nationality = 'United States of America';

-- Get all books published on 1985
	A:	SELECT title FROM books WHERE publication_date = 1985;

-- Get all books published before 1989
	A:	SELECT title FROM books WHERE publication_date < 1989;

-- Get just the title of all books.
	A:	SELECT title FROM books;

-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
  	A:	SELECT publication_date FROM books where title = 'A Dance with Dragons';

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
	A:	SELECT * FROM books WHERE title LIKE '%the%';

-- Add yourself as an author
	A:	INSERT INTO authors VALUES (9, 'Cameron Barclay', 'United States of America', 1991);

-- Add two books that you'd like to write (you can hard-code your id as the author id)
	A:	INSERT INTO books VALUES (499, 'Get Swoll', 2017, 9),
		(500, 'A guide on how to sleep', 2017, 9);

-- Update one of your books to have a new title	
	A:	UPDATE books SET title = 'Build a chair' WHERE title = 'A guide on how to sleep';

-- Delete your books
	A:	DELETE FROM books where title = 'Build a chair';
		DELETE FROM books where title = 'Get Swoll';

-- Delete your author entry
	A:	DELETE FROM authors where name = 'Cameron Barclay';

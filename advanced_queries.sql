-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
	A: SELECT * FROM books JOIN authors ON authors.id=books.author_id WHERE authors.name = 'George R.R. Martin';
-- Find all fields (book and author related) for all books written by Milan Kundera.
	A: SELECT * FROM books JOIN authors ON authors.id=books.author_id WHERE authors.name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.
	A: SELECT * FROM books JOIN  authors ON authors.id=books.author_id WHERE authors.nationality = 'China' OR authors.nationality = 'United Kingdom';

-- Find out how many books Albert Camus wrote.
	A: SELECT COUNT(*) FROM books JOIN authors ON authors.id=books.author_id WHERE authors.name = 'Albert Camus';

-- Find out how many books written before 1980 were by authors not from the US.
	A: SELECT COUNT(*) FROM books JOIN authors ON authors.id=books.author_id WHERE authors.nationality != 'United States of America' AND books.publication_date < 1980;

-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.
	A: SELECT * FROM authors WHERE name LIKE 'J%';

-- Find all books whose titles contain 'the'.
	A: SELECT * FROM books WHERE title LIKE '%the%';
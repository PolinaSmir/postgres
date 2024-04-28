CREATE TABLE books(
  book_number serial PRIMARY KEY,
  author varchar(64) NOT NULL CHECK(author != '') ,
  name varchar(256) NOT NULL CHECK(name != ''),
  year numeric NOT NULL,
  видавництво text NOT NULL CHECK(видавництво != ''),
  cathegory varchar(256),
  synopsis text,
  amount_of_primirniky int NOT NULL,
  status boolean NOT NULL
  );

  --  CHECK(amount_of_primirniky > 0)

  INSERT INTO books(author, name, year, видавництво, cathegory, synopsis, amount_of_primirniky, status) VALUES
  ('Dostojevskij', 'Vojna i Mir', 1645, 'Literature Club', 'ds', 'sadddd', 1, true);

  ALTER TABLE books
  ADD CONSTRAINT "unique_name_or_author" UNIQUE(name, author);

  ALTER TABLE books
  ADD CONSTRAINT "books_amount_of_primirniky" CHECK(amount_of_primirniky > 0);

  DROP TABLE books;

  INSERT INTO books(author, name, year, видавництво, cathegory, synopsis, amount_of_primirniky, status) VALUES
  ('ALEX', 'METRO', 2000, 'Literature Club', 'detective', 'some description', 0, false);
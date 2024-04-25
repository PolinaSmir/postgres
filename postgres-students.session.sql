CREATE TABLE contents(
  id serial PRIMARY KEY,
  name varchar(256) NOT NULL CHECK(name != ''),
  description text,
  author_id int REFERENCES users(id),
  created_at timestamp DEFAULT current_timestamp
);

CREATE TABLE reactions(
  content_id int REFERENCES contents(id),
  user_id int REFERENCES users(id),
  is_liked boolean
);

INSERT INTO contents (name, author_id) VALUES
('Funny dogs', 4);

INSERT INTO reactions VALUES
(1, 1, true);
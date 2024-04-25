CREATE TABLE coaches(
  id serial PRIMARY KEY,
  name varchar(256) NOT NULL CHECK(name != '')
  -- team_id int REFERENCES teams(id)
);

CREATE TABLE teams (
  id serial PRIMARY KEY,
  name varchar(256),
  coach_id int REFERENCES coaches(id)
);

ALTER TABLE coaches
ADD COLUMN team_id int REFERENCES teams(id);

ALTER

INSERT INTO coaches(name, team_id) VALUES
('Ivanov', NULL);

INSERT INTO teams(name, coach_id) VALUES
('Monreal', 1);


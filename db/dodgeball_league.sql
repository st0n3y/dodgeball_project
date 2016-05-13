DROP TABLE matches;
DROP TABLE teams;

CREATE TABLE teams (
  id SERIAL4 primary key,
  team_name VARCHAR(255),
  location VARCHAR(255)
);

CREATE TABLE matches (
  id SERIAL4 primary key,
  home_score INT4,
  away_score INT4,
  home_id INT4 REFERENCES teams( id ),
  away_id INT4 REFERENCES teams( id ),
  UNIQUE ( home_id, away_id )
);
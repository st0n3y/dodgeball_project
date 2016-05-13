DROP TABLE matches
DROP TABLE teams

CREATE TABLE teams (
  id SERIAL4 primary key,
  name VARCHAR(255),
  location VARCHAR(255)
);

CREATE TABLE matches (
  id SERIAL4 primary key,
  home_score INT4,
  away_score int4,
  home_team_id INT4 REFERENCES teams( id ),
  away_team_id INT4 REFERENCES teams( id ),
  UNIQUE ( home_team_id, away_team_id )
);
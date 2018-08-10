CREATE TABLE song_titles (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(50),
  length VARCHAR(20)
);

INSERT INTO song_titles (name, length) VALUES ('friend', '4:32');
INSERT INTO song_titles (name, length) VALUES ('foe', '4:32');
INSERT INTO song_titles (name, length) VALUES ('fortune', '4:32');
INSERT INTO song_titles (name, length) VALUES ('fortitude', '4:32');
INSERT INTO song_titles (name, length) VALUES ('fortnite', '4:32');

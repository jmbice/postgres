CREATE TABLE songs (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(50),
  length VARCHAR(50)
);

CREATE TABLE comments (
  id SERIAL NOT NULL PRIMARY KEY,
  song_id SMALLINT,
  author VARCHAR(100),
  avatar VARCHAR(20),
  date_written VARCHAR(50),
  time_written VARCHAR(50),
  text_written VARCHAR(200)
);


--\copy the data from CSV file to DB
--note: \copy  = non super user, while COPY is exclusively for super user
\copy songs(name,length) FROM '/Users/jordan_bice/documents/hack-reactor/sdc/Postgres/test.csv' DELIMITER ',' CSV HEADER;
\copy comments(song_id,author,avatar,date_written,time_written,text_written) FROM '/Users/jordan_bice/documents/hack-reactor/sdc/Postgres/test.comments.csv' DELIMITER ',' CSV HEADER;


--this is where you might add indeces if you decided to ommit them. For an example of the code, reference the example section on the bottom of this page: https://www.postgresql.org/docs/9.1/static/sql-altertable.html


--add foreing keys from comments to songs:
ALTER TABLE comments ADD CONSTRAINT songfk FOREIGN KEY (song_id) REFERENCES songs (id) MATCH FULL;

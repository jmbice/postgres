DROP TABLE songs;

CREATE TABLE songs (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(50),
  length VARCHAR(50)
);

\copy songs(name,length) FROM '/Users/jordan_bice/documents/hack-reactor/sdc/test.csv' DELIMITER ',' CSV HEADER;

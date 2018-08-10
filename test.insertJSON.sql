CREATE TABLE songs (
  id SERIAL NOT NULL PRIMARY KEY,
  comments jsonb
);

INSERT INTO songs VALUES (default, '{"name": "Paint house", "tags": ["Improvements", "Office"], "finished": true}');
INSERT INTO songs VALUES (default, '{"name": "Wash dishes", "tags": ["Clean", "Kitchen"], "finished": false}');


-- gets the values from an array in the jsonb
-- SELECT
--   jsonb_array_elements_text(comments->'tags') as tag
-- FROM songs
-- WHERE id = 1;


-- this gets all the results depending on jsonb key value
-- SELECT * FROM songs WHERE comments->>'finished' = 'true';


-- same as above, but faster when dealing with more data...
-- this creates an id for each key 'finished', and increases speed from the
-- CREATE INDEX idxfinished ON songs ((comments->>'finished'));
-- SELECT * FROM songs WHERE comments->>'finished' = 'true';

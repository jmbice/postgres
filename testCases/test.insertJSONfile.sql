-- CREATE TABLE songs (
--   id SERIAL NOT NULL PRIMARY KEY,
--   name VARCHAR(50),
--   length VARCHAR(50)
-- );


\set content `cat /tmp/test.json`
create temp table t ( j jsonb );
insert into t values (:'content');
select * from t;

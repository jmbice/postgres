# postgres

The purpose of this repo is to provide the example code (and instructions) for uploading large quantities of data using Postgres' COPY method. It assumes you're on a mac, and have downloaded Postgres using Brew. 
  - COPY from docs: https://www.postgresql.org/docs/9.2/static/sql-copy.html
  - Optimization guide from docs: https://www.postgresql.org/docs/current/static/populate.html
  - Recommended: you should read the docs to undersand the difference between \copy and COPY.
  - Recommended: consider using ANALYZE after uploading: https://www.postgresql.org/docs/current/static/sql-analyze.html


The file paths and schema in 'uploadBulk/create_copy_addFK_fromCSV.sql' must be updated to reflect your purposes.

Once the file has been updated, some of the subsequent commands need to be customized as well. Instructions for customizing the line commands are listed at each step below:

## First Step

As noted above, alter/add/reduce the schemas and file paths in 'uploadBulk/create_copy_addFK_fromCSV.sql'.

## Second Step

To alter postgres config file to optimize for COPY, use this line command:
```
psql -U [user] -d [db] < uploadBulk/alterDefaults.sql;
```
* [user] must be the name of your super user account. Do not include brackets.
* [db] DB you are working on. This might not be necessary, but I included it in my testing. Do not include brackets.


## Third Step

Restart your database, use this command:
```
brew services restart postgresql
```

## Fourth Step

To run bulk loader, use this line command:
```
psql -U [db_owner] -d [db] < uploadBulk/create_copy_addFK_fromCSV.sql;
```
* [db_owner] = owner of the database
* [db] = relevant database you want to create tables and copy data into
* note: this example assumes 2 tables linked with a foreign key.
* note: there are additional stubs in this document to generally outline what is happening


## Fifth Step

To return to default settings, use this line command:
```
psql -U [user] -d [db] < uploadBulk/returnDefaults.sql;
```
* [user] must be the name of your super user account. Do not include brackets.
* [db] DB you are working on. This might not be necessary, but I included it in my testing. Do not include brackets.


## Sixth Step

Finally, restart the DB again to return to default settings:
```
brew services restart postgresql
```

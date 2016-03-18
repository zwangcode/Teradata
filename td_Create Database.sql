--- Create a database , name as testdb. Parent DB is DBC.
--- allocate 1M bytes to testdb.
--- Note : this 1M bytes will be substracted from parent and
--- added to testdb
CREATE DATABASE TESTDB FROM DBC AS PERM=1000000;
-- Drop all objects in a database before drop db
DELETE DATABASE TESTDB;
--drop database testdb
DROP DATABASE TESTDB;
--- List all databases in the system
SELECT * FROM DBC.DATABASES ORDER BY DATABASENAME;
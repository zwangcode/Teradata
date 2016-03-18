-- Create a GLOBAL TEMPORARY table
-- Global temporary table similar to volatile table.
-- Data will not survive after session terminate.
-- On commit clause defines whether the data in the table
--  survives across the boundary of transaction
-- Global temporary table structure is persisted in database dictionary
--  Table will exist after session terminate.

CREATE GLOBAL TEMPORARY TABLE TESTDB.vol_table_1
(
     id INTEGER,
     val VARCHAR(30)
)
UNIQUE PRIMARY INDEX(id)
ON COMMIT PRESERVE ROWS;

CREATE GLOBAL TEMPORARY TABLE TESTDB.vol_table_2
(
     id INTEGER,
     val VARCHAR(30)
)
UNIQUE PRIMARY INDEX(id)
ON COMMIT PRESERVE ROWS;

 Use dictionary to list tables in a database
SELECT * FROM DBC.TABLES WHERE DATABASENAME = ‘TESTDB’;
INSERT INTO tested.VOL_TABLE_1 VALUES(1,’ABC’);
INSERT INTO tested.VOL_TABLE_2 VALUES(1,’ABC’);

SELECT * FROM tested.VOL_TABLE_1;
SELECT * FROM tested.VOL_TABLE_2;

HELP TABLE TESTDB.vol_table_1;
SHOW TABLE TESTDB.vol_table_1;
HELP DATABASE TESTDB;
HELP COLUMN TESTDB.vol_table_1.ID
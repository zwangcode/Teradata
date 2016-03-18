--- Use dictionary to list tables in a database
SELECT*FROM DBC.TABLESWHERE DATABASENAME='TESTDB';


-- Create a volatile table
-- Volatile table is like Temp table in SQL server
-- it only exists during the logon session. It will be destroyed (both data and structure)
-- when session is terminated.
-- on commit clause defines whether the data in the table survives across the boundary of
-- transaction
-- Volatile table has no entries in dbc.tables because its structure only exists in
-- session memory.
CREATEVOLATILETABLE vol_table_1(
idINTEGER,
valVARCHAR(30)
)
UNIQUEPRIMARYINDEX (id)
ONCOMMIT PRESERVEROWS;

CREATEVOLATILETABLE vol_table_2(
idINTEGER,
valVARCHAR(30)
)
UNIQUEPRIMARYINDEX (id)
ONCOMMIT DELETEROWS;


INSERTINTO VOL_TABLE_1VALUES(1,'ABC');
INSERTINTO VOL_TABLE_2VALUES(1,'ABC');
SELECT*FROM VOL_TABLE_1;
SELECT *FROM VOL_TABLE_2;
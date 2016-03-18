--- Create a table person
CREATETABLE TESTDB.PERSON(
PERSON_ID INTEGER,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
MIDDLE_NAME VARCHAR(30)
)
--- pirmary index definition is very important
--- primary index is not primary key.
--- Teradata use primary index to decide how to
--- distribute data to different AMP
UNIQUEPRIMARY INDEX
UPI_Person(PERSON_ID);

-- query the person table
SELECT*FROM testdb.person;

--- CREATE A VIEW
-- this view allows "dirty read" on the base table
-- lock applied in select query will be "reading uncommited"
--- hence select on the view will not block underlying write
-- load operations. This is similar to SQL server with (nolock)
-- keyword. In this case we applied the lock in the view
-- so that users do not have to type it.

CREATEVIEW TESTDB.V_PERSON
(
PERSON_ID,
FIRST_NAME,
LAST_NAME,
MIDDLE_NAME
)
AS
LOCKINGROW FORACCESS
SELECT        PERSON_ID,
        FIRST_NAME,
        LAST_NAME,
        MIDDLE_NAME
FROM        TESTDB.PERSON
;



-- drop view
DROPVIEW TESTDB.V_PERSON;
-- drop the person table
DROPTABLE testdb.person;
-- Include your drop table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the drop table ddls for the tables with foreign key references
--    ONLY AFTER the parent tables has already been dropped (reverse of the creation order).

DROP TABLE PRIORITY;
DROP TABLE PATIENT;
DROP TABLE LOCATION;
DROP TABLE HOSPITAL;
DROP TABLE NURSE;
DROP TABLE VACCINE;
DROP TABLE BATCH;
DROP TABLE VIAL;
DROP TABLE VACCINATIONDATE;
DROP TABLE SLOT;
DROP TABLE NURSEASSIGN;
CREATE DATABASE ASSIGNMENT;

USE ASSIGNMENT;

CREATE TABLE DETAILS(
ID int PRIMARY KEY,
NAME varchar(20)
);

INSERT INTO DETAILS
VALUES(1,'HANSRAJ');

INSERT INTO DETAILS
VALUES(2,'VIKAS');

BEGIN TRANSACTION 
UPDATE DETAILS
SET NAME='DEEP'
WHERE ID=1 
SELECT * FROM DETAILS


COMMIT TRANSACTION;

BEGIN TRAN
UPDATE DETAILS
SET NAME = 'HANSRAJ'
WHERE ID=1
ROLLBACK TRANSACTION;

SELECT * FROM DETAILS


INSERT INTO DETAILS
VALUES(3,'ANKUSH');
INSERT INTO DETAILS
VALUES(4,'CHIRAG');
INSERT INTO DETAILS
VALUES(5,'AJIT');

SELECT COUNT(ID) FROM DETAILS;
SELECT MAX(ID) FROM DETAILS;
SELECT MIN(ID) FROM DETAILS;
SELECT AVG(ID) FROM DETAILS;
SELECT SUM(ID) FROM DETAILS;


CREATE LOGIN hansraj with PASSWORD='hansraj'
CREATE USER hansraj FROM LOGIN hansraj

EXECUTE AS USER = 'hansraj'
SELECT * FROM fn_my_permissions('ASSIGNMENT','DATABASE') 
GRANT CONTROL ON DATABASE :: ASSIGNMENT to hansraj;
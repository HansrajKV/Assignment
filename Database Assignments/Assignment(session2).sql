CREATE DATABASE MARKSMANAGEMENT;

USE MARKSMANAGEMENT;

CREATE TABLE SCHOOL
(
S_ID int PRIMARY KEY, 
S_NAME varchar(20)
);

INSERT INTO SCHOOL
VALUES(1, 'HANSRAJ');
INSERT INTO SCHOOL
VALUES(2, 'VIKAS');
INSERT INTO SCHOOL
VALUES(3, 'DEEP');
INSERT INTO SCHOOL
VALUES(4, 'DIPTESH');
INSERT INTO SCHOOL
VALUES(5, 'ADIT');
INSERT INTO SCHOOL
VALUES(6, 'ADITI');


CREATE TABLE MARKS(
SCH_ID int PRIMARY KEY, 
S_ID int, 
GRADES int, 
RESULT varchar(20)
);

INSERT INTO MARKS 
VALUES(121,1,23,'FAIL');
INSERT INTO MARKS 
VALUES(122,2,78,'PASS');
INSERT INTO MARKS 
VALUES(123,3,20,'FAIL');
INSERT INTO MARKS 
VALUES(124,4,45,'PASS');
INSERT INTO MARKS 
VALUES(125,5,16,'FAIL');
INSERT INTO MARKS 
VALUES(126,6,99,'PASS');
INSERT INTO MARKS 
VALUES(127,7,90,'PASS');
INSERT INTO MARKS 
VALUES(128,8,79,'PASS');
INSERT INTO MARKS 
VALUES(129,9,65,'PASS');
INSERT INTO MARKS 
VALUES(130,10,78,'PASS');
INSERT INTO MARKS 
VALUES(131,11,22,'FAIL');



CREATE TABLE DETAILS(
CITY varchar(20),
EMAIL_ID varchar(20), 
SCH_ID int, 
ACCOMPLISHMENTS varchar(50)
);

INSERT INTO DETAILS 
VALUES('BANGALORE','jsingh@geeks.com',121,'ACM ICPC selected');
INSERT INTO DETAILS 
VALUES('HYDERABAD','praveen@geeks.com',122,'Geek of the month');
INSERT INTO DETAILS 
VALUES('DELHI','rithvik@geeks.com',123,'IOI finalist');
INSERT INTO DETAILS 
VALUES('CHENNAI','om@geeks.com',124,'Geek of the year');
INSERT INTO DETAILS 
VALUES('BANGALORE','suraj@geeks.com',125,'IMO finalist');
INSERT INTO DETAILS 
VALUES('MUMBAI','sasukeh@geeks.com',126,'Made a robot');
INSERT INTO DETAILS 
VALUES('AHMEDBAD','itachi@geeks.com',127,'Code Jam finalist');
INSERT INTO DETAILS 
VALUES('JAIPUR','kumar@geeks.com', 128,'KVPY finalist');



SELECT * FROM SCHOOL;

SELECT * FROM MARKS;

SELECT * FROM DETAILS;

SELECT A.S_ID,A.S_NAME,B.SCH_ID,B.GRADES,C.CITY,C.EMAIL_ID FROM SCHOOL A 
INNER JOIN MARKS B on A.S_ID = B.S_ID 
INNER JOIN DETAILS C on B.SCH_ID = C.SCH_ID;

SELECT A.S_ID,A.S_NAME,B.SCH_ID,B.GRADES,C.CITY,C.EMAIL_ID FROM SCHOOL A 
LEFT JOIN MARKS B on A.S_ID = B.S_ID 
LEFT JOIN DETAILS C on B.SCH_ID = C.SCH_ID;

SELECT A.S_ID,A.S_NAME,B.SCH_ID,B.GRADES,C.CITY,C.EMAIL_ID FROM SCHOOL A 
RIGHT JOIN MARKS B on A.S_ID = B.S_ID 
RIGHT JOIN DETAILS C on B.SCH_ID = C.SCH_ID;

SELECT * FROM SCHOOL A 
LEFT JOIN MARKS B on A.S_ID = B.S_ID  
RIGHT JOIN DETAILS C on B.SCH_ID = C.SCH_ID;

SELECT * FROM SCHOOL A 
RIGHT JOIN MARKS B on A.S_ID = B.S_ID  
LEFT JOIN DETAILS C on B.SCH_ID = C.SCH_ID;

SELECT * FROM MARKS A
LEFT JOIN SCHOOL B ON A.S_ID = B.S_ID
UNION
SELECT * FROM MARKS A
RIGHT JOIN SCHOOL B ON A.S_ID = B.S_ID
ORDER BY A.S_ID;

SELECT * FROM MARKS A
LEFT JOIN DETAILS B ON A.SCH_ID = B.SCH_ID
UNION
SELECT * FROM MARKS A
RIGHT JOIN DETAILS B ON A.SCH_ID = B.SCH_ID
ORDER BY A.SCH_ID;


CREATE PROCEDURE uspSCHOOL
AS
BEGIN
	SELECT 
		S_ID,
		S_NAME
	FROM 
		SCHOOL
	ORDER BY 
		S_ID;

END;

EXEC uspSCHOOL;

ALTER PROCEDURE uspSCHOOL
AS
BEGIN
	SELECT 
		S_ID,
		S_NAME
	FROM 
		SCHOOL
	ORDER BY 
		S_NAME;

END;

EXEC uspSCHOOL;

ALTER PROCEDURE HANSSCHOOL @Stud_NAME varchar(20)
AS
BEGIN
	SELECT 
		S_ID,
		S_NAME
	FROM 
		SCHOOL WHERE S_ID = @Stud_NAME
	ORDER BY 
		S_NAME;

END;

EXEC HANSSCHOOL @Stud_NAME = 'HANSRAJ';



CREATE VIEW HANSRAJJ 
AS
SELECT * FROM SCHOOL WHERE S_ID>3;

SELECT * FROM HANSRAJJ;
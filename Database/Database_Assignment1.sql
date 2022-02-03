CREATE DATABASE StdMgtSys;



USE StdMgtSys;



CREATE TABLE STUDENTS
(
ID int PRIMARY KEY,
NAME varchar(50),
EMAIL varchar(50),
Mobile int
);



INSERT INTO STUDENTS VALUES(1,'Hansraj','Hansraj@GMAIL.COM',7654328917);



INSERT INTO STUDENTS VALUES(2,'XYZ','XYZ@GMAIL.COM',8625143362) (3,'MNO','MNO@GMAIL.COM',99999999999);



ALTER TABLE STUDENTS ADD CITY varchar(10);



UPDATE STUDENTS SET CITY='AHMEDABAD' WHERE ID=2;



UPDATE STUDENTS SET CITY='SURAT' WHERE MOBILE=9999999999;



SELECT * FROM STUDENTS;



SELECT * FROM STUDENTS WHERE ID = 1;



SELECT DISTINCT ID FROM STUDENTS;



SELECT DISTINCT MOBILE FROM STUDENTS;



SELECT MOBILE FROM STUDENTS GROUP BY MOBILE;



SELECT * FROM STUDENTS WHERE MOBILE>1000000000;



SELECT * FROM STUDENTS WHERE CITY='AHMEDABAD';



SELECT * FROM STUDENTS WHERE CITY LIKE '_HME_ABAD';



SELECT * FROM STUDENTS WHERE CITY LIKE '_HME_A%';



DELETE STUDENTS WHERE ID=3;



DELETE STUDENTS WHERE ID=2 AND CITY='AHMEDABAD' ;



TRUNCATE TABLE STUDENTS;



DROP TABLE STUDENTS;



DROP DATABASE StdMgtSys;
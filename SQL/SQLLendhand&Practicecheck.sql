
Lend a Hand (Constraints)

CREATE TABLE Course_Info
(
Course_code VARCHAR(20) PRIMARY KEY, 
Course_name  VARCHAR(20)   NOT NULL, 
Course_description  VARCHAR(250), 
Course_start_date  DATE, 
Course_duration INT, 
No_of_participants INT, 
Course_type CHAR(3)
)
 
CREATE TABLE Student_Info
(
Student_id VARCHAR(10) PRIMARY KEY,
First_name VARCHAR(20),
Last_name VARCHAR(25),
Address VARCHAR(150)
)

CREATE TABLE student_courses
   (
   Student_id VARCHAR (10),
   Course_code VARCHAR (20),
   CONSTRAINT fk_student_id FOREIGN KEY (student_id)
   REFERENCES student_info(student_id),
   CONSTRAINT fk_course_code FOREIGN KEY(course_code)
   REFERENCES course_info(course_code)
   )

   
CREATE TABLE course_fees
(
Course_code VARCHAR (20), 
Base_fees INT ,
Special_fees INT,
Discount INT,
CONSTRAINT fk_course_code2 FOREIGN KEY(course_code) 
REFERENCES course_info(course_code), 
CONSTRAINT chk_base_fees CHECK(base_fees > 0 AND base_fees>special_fees), 
CONSTRAINT chk_discount CHECK(discount >=5 AND discount <=15) 
)


---------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


Practice Check(Constraints)

Create table suppliers(supplier_id int not null,
supplier_name varchar(50) not null,
address varchar(50),
city varchar(50),
state varchar(25),
zip_code varchar(10))

create table customers(customer_id int  primary key not null,
customer_name varchar(50) not null,
address varchar(50),
city varchar(50),
state varchar(25),
zip_code varchar(10))

CREATE TABLE departments
( department_id INT NOT NULL,
  department_name varchar(50) NOT NULL,
  CONSTRAINT departments_pk PRIMARY KEY (department_id)
);


create table employees(emp_number int primary key,emp_name varchar(50),
department INT Foreign Key references departments(department_id),salary int)

-------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------

Lend a Hand(SQL Operators)



Solution #1:
SELECT COURSE_CODE, BASE_FEES+SPECIAL_FEES 
AS TOTAL_FEES 
FROM COURSE_FEES 

Solution #2:
SELECT COURSE_CODE,DISCOUNT*(BASE_FEES+SPECIAL_FEES)/100 
AS DISCOUNTFEES 
FROM COURSE_FEES 


Solution #3:
SELECT course_name 
FROM course_info 
WHERE course_duration >10 
and no_of_participants <20 

Solution #4:
SELECT Course_code
FROM course_fees
WHERE BASE_FEES >100 
and SPECIAL_FEES < 1000


Solution #5:
SELECT COURSE_CODE 
FROM COURSE_FEES 
WHERE BASE_FEES>200

Solution #6:
SELECT STUDENT_ID,FIRST_NAME 
FROM STUDENT_INFO 
WHERE FIRST_NAME!=LAST_NAME

Solution #7:
SELECT COURSE_CODE 
FROM COURSE_FEES 
WHERE BASE_FEES 
BETWEEN 100 
AND 3000


Solution #8:
SELECT STUDENT_ID,FIRST_NAME 
FROM STUDENT_INFO 
WHERE FIRST_NAME 
LIKE 'A%'

Solution #9:
SELECT STUDENT_ID,FIRST_NAME 
FROM STUDENT_INFO 
WHERE FIRST_NAME 
LIKE '%O%'

Solution #10:
SELECT course_name 
FROM COURSE_INFO 
WHERE COURSE_DESCRIPTION 
IS NULL

--------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
Practice Check(SQL Operators)

create table COURSE_FEES(course_code varchar(50) primary key,
base_fees int NOT NULL ,special_fees int NOT NULL,Discount int)
drop table COURSE_FEES

create table COURSE_FEES_HISTORY(course_code varchar(50) Foreign Key references COURSE_FEES(course_code),
special_fees int,Base_fees int,created_By varchar(20),updated_By varchar(20))


drop table COURSE_FEES
INSERT into COURSE_FEES values
(1,180,100,10),
(2,150,110,10),
(3,160,170,5),
(4,150,100,10),
(5,190,100,40)

insert into COURSE_FEES_HISTORY values
(1,120,123,'ram','ramesh'),
(2,150,110,'bala','ram'),
(3,160,170,'bala','vinu'),
(4,170,235,'ram','ram'),
(5,190,100,'vinod','vinod')


select course_code,base_fees,special_fees from COURSE_FEES UNION SELECT course_code,base_fees,special_fees from course_FEES_HISTORY

-------------------------------------------
-------------------------------------------------

Lend a Hand(Functions)

Solution 1:
SELECT COUNT(*) FROM COURSE_INFO


Solution 2:
SELECT SUM(BASE_FEES) FROM course_fees


INSERT into COURSE_FEES values
(8,null,100,10),(9,null,20,10)

INSERT into COURSE_FEES values
(8,300,100,10),(9,175,20,10)

Solution 3
SELECT COURSE_INFO.COURSE_NAME,
ROUND(COURSE_FEES.SPECIAL_FEES,2) 
FROM COURSE_INFO,COURSE_FEES 
WHERE COURSE_INFO.COURSE_CODE=COURSE_FEES.COURSE_CODE


Solution 4 : 
SELECT CONCAT(UPPER(LEFT(COURSE_NAME, 1)),
LOWER(SUBSTRING(COURSE_NAME, 2,1))) 
FROM COURSE_INFO 

Solution 5:
SELECT UPPER(COURSE_NAME)
FROM COURSE_INFO


Solution 6:
SELECT SUBSTRING(COURSE_DESCRIPTION,1,3) 
FROM COURSE_INFO

Solution 7:
SELECT 100000 + CAST(STUDENT_ID as decimal) 
FROM STUDENT_INFO

Solution 8: 

SELECT  CONCAT('THE BASE FEES AMOUNT FOR THE COURSE_NAME IS',
CINFO.COURSE_NAME, CAST(FEESINFO.BASE_FEES as decimal))
FROM COURSE_INFO CINFO,COURSE_FEES FEESINFO 
WHERE CINFO.COURSE_CODE=FEESINFO.COURSE_CODE

----------------------------------------------------------------------------
-------------------------------------------------------------------------------------

Practice Check(Functions)

INSERT into COURSE_FEES values
(8,null,100,10),(9,null,20,10)

INSERT into COURSE_FEES values
(8,300,100,10),(9,175,20,10)

insert into COURSE_INFO values(102,'new','new','12/03/2020',1,10,'CLR')
insert into COURSE_INFO values(103,'new','new','12/03/2020',1,10,'EL')
insert into COURSE_INFO values(104,'new','new','12/03/2020',1,10,'OF')

Solution 1:
SELECT MIN(BASE_FEES),MAX(BASE_FEES) 
	   FROM COURSE_FEES

Solution 2:
SELECT AVG(SPECIAL_FEES) 
 	  FROM course_fees


Solution 3 :
SELECT COURSE_NAME,
TO_DAYS(get_date() AS Date)–TO_DAYS(course_start_date) 
FROM COURSE_INFO 

Solution 4 :
SELECT CONCAT(COURSE_NAME,COURSE_CODE)
FROM COURSE_INFO

Solution 5: 
SELECT AVG(IsNULL(BASE_FEES,0)) 
FROM COURSE_FEES

Solution 6: 

SELECT COURSE_TYPE, CASE COURSE_TYPE 
WHEN 'CLR' THEN  'lCLASS ROOM'
WHEN 'EL' THEN 'ELEARNING'
WHEN 'OF' THEN 'OFFLINE READING' 
END RESULT 
FROM COURSE_INFO



-----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

Lend a Hand(Clauses)

Solution 1:
SELECT SUM(NO_OF_PARTICIPANTS),COURSE_START_DATE 
FROM COURSE_INFO 
GROUP BY COURSE_START_DATE

Solution 2:
SELECT SUM(NO_OF_PARTICIPANTS),COURSE_START_DATE 
FROM COURSE_INFO 
WHERE COURSE_TYPE='CLR' 
GROUP BY COURSE_START_DATE

Solution 3:
SELECT SUM(NO_OF_PARTICIPANTS),COURSE_START_DATE 
FROM COURSE_INFO 
WHERE COURSE_TYPE='CLR' 
GROUP BY COURSE_START_DATE 
HAVING SUM(NO_OF_PARTICIPANTS)>10


Solution 4
SELECT COURSE_CODE, COURSE_NAME, COURSE_START_DATE,COURSE_DURATION,
NO_OF_PARTICIPANTS,COURSE_TYPE 
FROM COURSE_INFO 
ORDER BY COURSE_DURATION

Solution 5
SELECT STUD.FIRST_NAME,COURSE.COURSE_CODE,COURSE.COURSE_NAME,FEES.BASE_FEES FROM STUDENT_INFO STUD,COURSE_INFO COURSE,COURSE_FEES FEES 
ORDER BY FEES.BASE_FEES DESC

---------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

Lend a Hand(Joins)

Solution 1: 
SELECT s.student_id, s.first_name, s.last_name, s.address, 	c.course_code
FROM  student_info INNER JOIN student_course
ON s.student_id = c.student_id WHERE c.course_code = 167;


Solution 2:
SELECT cf.discount, ci.course_description 
FROM course_fees cf INNER JOIN course_info ci 
ON cf.course_code = ci.course_code;


Solution 3(a):
SELECT si.first_name, sc.course_code 
FROM student_info si LEFT JOIN student_courses sc 
ON si.student_id = sc.student_id;

Solution 3(b):
SELECT first_name, course_code 
FROM student_courses  sc RIGHT JOIN student_info  si
ON sc.student_id = si.student_id;


-----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Lend a Hand(Subqueries)

SELECT student_id  
FROM student_courses 
WHERE course_code IN (SELECT course_code FROM course_fees 
WHERE special_fees <1500);


SELECT c.student_id, s.first_name  
FROM student_courses c, student_info s 
WHERE s.student_id = c.student_id 
AND course_code IN 
(SELECT course_code FROM course_fees 
WHERE special_fees <1500);

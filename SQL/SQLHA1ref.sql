use AllianceFeedbackSystemdb
SELECT CURRENT_USER;  

create table Trainer_Info1(Trainer_Id char(20) primary key,
Salutation Char(7),Trainer_Name char(30),
Trainer_Location char(30),Trainer_Track char(15),
Trainer_Qualification char(100) ,Trainer_Experience int,
Trainer_Email char(100),Trainer_Password char(20))


create table Batch_Info1(Batch_Id char(30) primary key,Batch_Owner char(30),Batch_BU_Name char(30))

create table Module_Info1(Module_Id char(20) primary key,Module_Name char(40),Module_Duration int)

create table Associate_Info1(Associate_Id char(20) primary key,Salutation char(7),
Associate_Name char(30),Associate_Location char(30),Associate_Track char(15),
Associate_Qualification char(200),Associate_Email char(100),Associate_Password char(20))

create table Questions1(Question_Id char(20) primary key,Module_Id char(20),Question_Text char(900))

create table Associate_Status1( Associate_Id char(20) FOREIGN KEY REFERENCES Associate_Info1(Associate_Id),Module_Id char(20),
Start_Date char(20),End_Date char(20),AFeedbackGiven char(20),TFeedbackGiven char(20))

create table Trainer_Feedback1(Trainer_Id char(20) Foreign Key references Trainer_Info1(Trainer_Id),Question_Id char(20),Batch_Id char(20),Module_Id char(20),Trainer_Rating int)

create table Associate_Feedback1(Associate_Id char(20) Foreign Key references Associate_Info1(Associate_Id),Question_Id char(20),Module_Id char(20),Associate_Rating int)

create table Login_Details1(user_id char(20),User_Password char(20))








create table Trainer_Info(Trainer_Id char(20) primary key,
Salutation Char(7),Trainer_Name char(30),
Trainer_Location char(30),Trainer_Track char(15),
Trainer_Qualification char(100) ,Trainer_Experience int,
Trainer_Email char(100),Trainer_Password char(20))


create table Batch_Info(Batch_Id char(30) primary key,Batch_Owner char(30),Batch_BU_Name char(30))

create table Module_Info(Module_Id char(20) primary key,Module_Name char(40),Module_Duration int)

create table Associate_Info(Associate_Id char(20) primary key,Salutation char(7),
Associate_Name char(30),Associate_Location char(30),Associate_Track char(15),
Associate_Qualification char(200),Associate_Email char(100),Associate_Password char(20))

create table Questions(Question_Id char(20) primary key,Module_Id char(20),Question_Text char(900))

create table Associate_Status( Associate_Id char(20) FOREIGN KEY REFERENCES Associate_Info(Associate_Id),Module_Id char(20),
Start_Date char(20),End_Date char(20),AFeedbackGiven char(20),TFeedbackGiven char(20))

create table Trainer_Feedback(Trainer_Id char(20) Foreign Key references Trainer_Info(Trainer_Id),Question_Id char(20),Batch_Id char(20),Module_Id char(20),Trainer_Rating int)

create table Associate_Feedback(Associate_Id char(20) Foreign Key references Associate_Info(Associate_Id),Question_Id char(20),Module_Id char(20),Associate_Rating int)

create table Login_Details(user_id char(20),User_Password char(20))

insert into Trainer_Info values 
('F001','Mr.','PANKAJ GHOSH','Pune','Java','Bachelor of Technology',12,'Pankaj.Ghosh@alliance.com','fac1@123'),
('F002','Mr.','SANJAY RADHAKRISHNAN ','Bangalore','DotNet','Bachelor of Technology',12,'Sanjay.Radhakrishnan@alliance.com','fac2@123'),
('F003','Mr.','VIJAY MATHUR','Chennai','Mainframe','Bachelor of Technology',10,'Vijay.Mathur@alliance.com','fac3@123'),
('F004','Mrs.','NANDINI NAIR','Kolkata','Java','Master of Computer Applications',9,'Nandini.Nair@alliance.com','fac4@123'),
('F005','Miss.','ANITHA PAREKH','Hyderabad','Testing','Master of Computer Applications',6,'Anitha.Parekh@alliance.com','fac5@123'),
('F006','Mr.','MANOJ AGRAWAL' ,'Mumbai','Mainframe','Bachelor of Technology',9,'Manoj.Agrawal@alliance.com','fac6@123'),
('F007','Ms.','MEENA KULKARNI','Coimbatore','Testing','Bachelor of Technology',5,'Meena.Kulkarni@alliance.com','fac7@123'),
('F009','Mr.','SAGAR MENON ','Mumbai','Java','Master of Science In Information Technology',12,'Sagar.Menon@alliance.com','fac8@123')


insert into Batch_Info values
('B001','MRS.SWATI ROY','MSP'),
('B002','MRS.ARURNA K','HEALTHCARE'),
('B003','MR.RAJESH KRISHNAN','LIFE SCIENCES'),
('B004','MR.SACHIN SHETTY','BFS'),
('B005','MR.RAMESH PATEL','COMMUNICATIONS'),
('B006','MRS.SUSAN CHERIAN','RETAIL & HOSPITALITY'),
('B007','MRS.SAMPADA JAIN','MSP'),
('B008','MRS.KAVITA REGE','BPO'),
('B009','MR.RAVI SEJPAL','MSP')

 insert into Module_Info values
 ('O10SQL','Oracle 10g SQL' ,16),
('O10PLSQL','Oracle 10g PL/ SQL ',16),
('J2SE','Core Java SE 1.6',288),
('J2EE','Advanced Java EE 1.6',80),
('JAVAFX','JavaFX 2.1',80),
('DOTNT4','.Net Framework 4.0 ',50),
('SQL2008','MS SQl Server 2008',120),
('MSBI08','MS BI Studio 2008',158),
('SHRPNT','MS Share Point ',80),
('ANDRD4','Android 4.0',200),
('EM001','Instructor',0),
('EM002','Course Material',0),
('EM003','Learning Effectiveness',0),
('EM004','Environment',0),
('EM005','Job Impact',0),
('TM001','Attendees',0),
('TM002','Course Material',0),
('TM003','Environment',0)


insert into Associate_Info values
('A001','Miss.','GAYATHRI NARAYANAN','Gurgaon','Java','Bachelor of Technology','Gayathri.Narayanan@hp.com','tne1@123'),
('A002','Mrs.','RADHIKA MOHAN','Kerala','Java','Bachelor of Engineering In Information Technology','Radhika.Mohan@cognizant.com','tne2@123'),
('A003','Mr.','KISHORE SRINIVAS','Chennai','Java','Bachelor of Engineering In Computers','Kishore.Srinivas@ibm.com','tne3@123'),
('A004','Mr.','ANAND RANGANATHAN','Mumbai','DotNet','Master of Computer Applications','Anand.Ranganathan@finolex.com','tne4@123'),
('A005','Miss.','LEELA MENON','Kerala','Mainframe','Bachelor of Engineering In Information Technology','Leela.Menon@microsoft.com','tne5@123'),
('A006','Mrs.','ARTI KRISHNAN','Pune','Testing','Master of Computer Applications','Arti.Krishnan@cognizant.com','tne6@123'),
('A007','Mr.','PRABHAKAR SHUNMUGHAM','Mumbai','Java','Bachelor of Technology','Prabhakar.Shunmugham@honda.com','tne7@123')

insert into Questions values
('Q001','EM001','Instructor knowledgeable and able to handle all your queries'),
('Q002','EM001','All the topics in a particular course handled by the trainer without any gaps or slippages'),
('Q003','EM002','The course materials presentation, handson,  etc. refered during the training are relevant and useful.'),
('Q004','EM002','The Hands on session adequate enough to grasp the understanding of the topic.'),
('Q005','EM002','The reference materials suggested for each module are adequate.'),
('Q006','EM003','Knowledge and skills presented in this training are applicatible at your work'),
('Q007','EM003','This training increases my proficiency level'), 
('Q008','EM004','The physical environment e.g. classroom space, air-conditioning was conducive to learning.'),
('Q009','EM004','The software/hardware environment provided was sufficient for the purpose of the training.'),
('Q010','EM005','This training will improve your job performance.'),
('Q011','EM005','This training align with the business priorities and goals.'),
('Q012','TM001','Participants were receptive and had attitude towards learning.'),
('Q013','TM001','All participats gained the knowledge and the practical skills after this training.'),
('Q014','TM002','The course materials presentation, handson,  etc. available for the session covers the entire objectives of the course.'),
('Q015','TM002','Complexity of the course is adequate for the particpate level.'),
('Q016','TM002','Case study and practical demos helpful in understanding of the topic'),
('Q017','TM003','The physical environment e.g. classroom space, air-conditioning was conducive to learning.'),
('Q018','TM003','The software/hardware environment provided was adequate  for the purpose of the training.')

insert into Associate_Status values
('A001','O10SQL','B001','F001','2000-12-15','2000-12-25'),
('A002','O10SQL','B001','F001','2000-12-15','2000-12-25'),
('A003','O10SQL','B001','F001','2000-12-15','2000-12-25'),
('A001','O10PLSQL','B002','F002','2001-2-1','2001-2-12'),
('A002','O10PLSQL','B002','F002','2001-2-1','2001-2-12'),
('A003','O10PLSQL','B002','F002','2001-2-1','2001-2-12'),
('A001','J2SE','B003','F003','2002-8-20','2002-10-25'),
('A002','J2SE','B003','F003','2002-8-20','2002-10-25'),
('A001','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A002','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A003','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A004','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A005','JAVAFX','B005','F006','2005-12-4','2005-12-20'),
('A006','JAVAFX','B005','F006','2005-12-4','2005-12-20'),
('A006','SQL2008','B006','F007','2007-6-21','2007-6-28'),
('A007','SQL2008','B006','F007','2007-6-21','2007-6-28'),
('A002','MSBI08','B007','F006','2009-6-26','2009-6-29'),
('A003','MSBI08','B007','F006','2009-6-26','2009-6-29'),
('A004','MSBI08','B007','F006','2009-6-26','2009-6-29'),
('A002','ANDRD4','B008','F005','2010-6-5','2010-6-28'),
('A005','ANDRD4','B008','F005','2010-6-5','2010-6-28'),
('A003','ANDRD4','B009','F005','2011-8-1','2011-8-20'),
('A006','ANDRD4','B009','F005','2011-8-1','2011-8-20')



update Trainer_Info set Trainer_Password='nn4@123' where Trainer_Password='fac4@123' and Trainer_Id='F004'

delete from Associate_Status where Associate_Id='A003' and Module_Id='j2EE' and Batch_Id='B004' and Trainer_Id='F004' and Start_Date='2005-12-1' and End_Date='2005-12-25'

select TOP 5 * from Trainer_Info order by Trainer_Experience DESC  

BEGIN TRANSACTION;
insert into Login_Details values('U001','Admin1@123'),('U002','Admin2@123')
select * from Login_Details
ROLLBACK;
DROP TABLE Login_Details



use AllianceFeedbackSystemdb
CREATE LOGIN Surya
    WITH PASSWORD = '123'
Create user nani for login Surya
 

use AllianceFeedbackSystemdb
GRANT ALTER ON Schema :: DBO TO nani
GRANT REFERENCES TO nani
GRANT CREATE TABLE TO nani;
GRANT SELECT ON Associate_Feedback TO nani
GRANT SELECT ON Associate_Info TO nani
GRANT SELECT ON Associate_Status TO nani
GRANT SELECT ON Batch_Info TO nani
GRANT SELECT ON Trainer_Info TO nani
GRANT SELECT ON Module_Info TO nani
GRANT SELECT ON Questions TO nani
GRANT SELECT ON Trainer_Feedback TO nani

REVOKE SELECT ON Associate_Feedback FROM nani
REVOKE SELECT ON Associate_Info FROM nani
REVOKE SELECT ON Associate_Status FROM nani
REVOKE SELECT ON Batch_Info FROM nani
REVOKE SELECT ON Trainer_Info FROM nani
REVOKE SELECT ON Module_Info FROM nani
REVOKE SELECT ON Questions FROM nani
REVOKE SELECT ON Trainer_Feedback TO nani
REVOKE CREATE TABLE FROM nani
drop login Surya
drop user nani



drop table Login_Details




---------------------------------------




create table Student_Info(Reg_Number varchar(30) primary key,Student_Name varchar(30),
Branch varchar(30),Contact_Number varchar(30),Date_Of_Birth date,Date_Of_Joining date,Address varchar(250),Email_Id varchar(250))


create table Subject_Master(Subject_Code varchar(10) primary key,Subject_Name varchar(30),Weightage int)


create table Student_Marks(Reg_Number varchar(30)  Foreign Key references Student_Info(Reg_Number) ,
Subject_Code varchar(10) Foreign Key references Subject_Master(Subject_Code),Semester int,Marks int)
drop table Subject_Master
drop table Student_Marks
drop table Student_Info


create table Student_Result(Reg_Number varchar(30) Foreign Key references Student_Info(Reg_Number),
Semester int Foreign Key references Student_Marks(Semester),GPA int,Is_Eligible_Scholarship char(3))


create table Student_Result(Reg_Number varchar(30) Foreign Key references Student_Info(Reg_Number),
Semester int,GPA int,Is_Eligible_Scholarship char(3))

insert into Student_Info values
('MC101301','James','MCA','9714589787','12-Jan-1984','02-Jul-2010','No 10,South Block,Nivea','james.mca@yahoo.com'),
('BEC111402','Manio','ECE','8912457875','23-Feb-1983','25-jun-2011','8/12,park View,Sieera','manioma@gmail.com'),
('BEEI101204','Mike','EI','8974567897','10-Feb-1983','25-Aug-2010','CrossVilla,NY','mike.james@jmail.com'),
('MB111305','paulson','MBA','8547986123','13-Dec-1984','18-Aug-2010','Lake view,NJ','paul.son@rediffmail.com')

insert into Subject_Master values
('EE01DCF','DCF',30),
('EC02MUP','Microprocessor',40),
('MC06DIP','Digital Image Processing',30),
('MB03MAR','Marketing Techniques',20),
('EI02IP','Instrumentation Precision',40),
('CPSC02DS','data Structures',40)


insert into Student_Marks values
('MC101301','EE01DCF',1,75),
('MC101301','EC02MUP',1,65),
('MC101301','MC06DIP',1,70),
('BEC111402','EE01DCF',1,55),
('BEC111402','EC02MUP',1,80),
('BEC111402','MC06DIP',1,60),
('BEEI101204','EE01DCF',1,85),
('BEEI101204','EC02MUP',1,78)
('BEEI101204','MC06DIP',1,80),
('BEEI101204','MB03MAR',2,75),
('BEEI101204','EI02IP',2,65),
('BEEI101204','CPSC02DS',2,75),
('MB111305','EE01DCF',1,65),
('MB111305','EC02MUP',1,68),
('MB111305','MC06DIP',1,63),
('MB111305','MB03MAR',2,85),
('MB111305','EI02IP',2,74),
('MB111305','CPSC02DS',2,62)

INSERT INTO Student_Result values
('MC101301',1,7.5,'Y'),
('BEC111402',1,7.1,'Y'),
('BEEI101204',1,8.3,'Y'),
('BEEI101204',2,6.9,'N'),
('MB111305',1,6.5,'N'),
('MB111305',2,6.8,'N')



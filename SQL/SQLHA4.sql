G SURYA TEJA-895196


1. Create table Employee(id int PRIMARY KEY,name varchar(20) not null,department varchar(20) check(department IN ('HR','Accts','Sales')),manager varchar(20) not null)


2. insert into Employee values(1,'CSE','HR','ravi'),
(2,'ECE','Accts','teja'),
(3,'EEE','Sales','Mahesh'),
(4,'MECH','HR','Rajesh'),
(5,'IT','Sales','Dinesh')

3. select * from employee


4. alter table Employee add salary int check(salary>0)
   update Employee set salary=15000
   select * from Employee

5. update Employee set salary=salary+2800 where department='HR'
   select * from Employee

6. update Employee set manager='pradeep' where department IN('Accts','Sales')
   select * from Employee

7. sp_RENAME 'Employee.manager', 'manager_name' ,'column'
   select * from Employee


8. select * from Employee where salary>15000
9. select * from Employee where (department='Accts' or department='HR') and salary>15000
10.select name from Employee where department='Accts'





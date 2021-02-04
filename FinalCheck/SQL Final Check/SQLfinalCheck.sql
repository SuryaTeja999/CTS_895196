create database truyum
use truyum
/*Creating Tables */
/* user table */
create table user123(us_id int Primary Key,us_name varchar(60))


/* cart table */
create table cart(ct_id int primary key,
ct_us_id int Foreign Key references user123(us_id),
ct_pr_id int Foreign Key references menu_item(me_id))

/* menu table */
create table menu_item(me_id int primary key,
me_name varchar(100),
me_price int,
me_active varchar(3),
me_date_of_launch date,
me_category varchar(45),
me_free_delivery varchar(3))



/* view menu item list */
/* menu table insertion */
1.a 
insert into menu_item values
(1,'sandwich',99,'yes',CONVERT(date,'15-03-2017',104),'Main course','yes'),
(2,'Burger',129,'yes',CONVERT(date,'23/12/2017',104),'main course','No'),
(3,'Pizza',149,'yes',CONVERT(date,'21/08/2017',104),'main course','No'),
(4,'French Fries',57,'No',CONVERT(date,'02/07/2017',104),'starters','yes'),
(5,'Chocolate Brownie',32,'yes',CONVERT(date,'02/11/2022',104),'dessert','yes')

/* get all menu items */
1.b) 
select * from menu_item 
    
/* menu item list for customer */
2.
select * from menu_item where me_active='yes' and me_date_of_launch is not null

/* Edit Menu Item */

3. 
select * from menu_item where me_id=(select me_id from menu_item where me_name='sandwich')

/* Add to Cart */
3.1 
update menu_item set me_name='Burgernew',me_price='500',   
me_active='No',me_date_of_launch='12/02/2010',me_category='Main course',me_free_delivery='yes'
where me_id=(select me_id from menu_item where me_name='Burger')

/* view Cart */

4.  /* insert to user */
 insert into user123 values(1,'nani'),(2,'surya')

    /* insert to cart */
   insert into cart values(1,2,3),(2,2,1),(3,2,4) 

   /* menu items from cart */
5.a)
select me_name,me_free_delivery,me_price from menu_item where me_id IN(select ct_pr_id from cart where ct_us_id IN(select us_id from user123 where us_name='surya'))

   /* Total Price from cart */

5.b) 
select sum(me_price) as "Total Price" from menu_item where me_id IN(select ct_pr_id from cart where ct_us_id IN(select us_id from user123 where us_name='surya'))


  /* remove from cart */

6.
delete from cart where ct_us_id=(select us_id from user123 where us_name='surya') and 
ct_pr_id=(select me_id from menu_item where me_name='Burger')


   /* User In cart */

7. select u.us_name,m.me_name,m.me_price,m.me_active,m.me_category,m.me_free_delivery
from menu_item m join cart c on m.me_id=c.ct_pr_id join user123 u on u.us_id=c.ct_us_id where u.us_id IN(select 
us_id from user123 where us_name='surya')



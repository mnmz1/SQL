/* Student name: Mahamed Mahamud
Student username: adck846
*/

/* SECTION 1 CREATE TABLE STATEMENTS */

CREATE TABLE adck846_customers(
customer_id INTEGER(3) NOT NULL,
name VARCHAR(20) NOT NULL,
age INTEGER(2) NOT NULL,
phone_number VARCHAR(15) NOT NULL UNIQUE,
email VARCHAR(255) NOT NULL UNIQUE,
PRIMARY KEY(customer_id)
);

CREATE TABLE adck846_payments(
card_number VARCHAR(16) NOT NULL,
total_price DECIMAL(6,2) NOT NULL,
transaction_date INTEGER(6) NOT NULL,
customer_id INTEGER(3) NOT NULL,
PRIMARY KEY(card_number),
FOREIGN KEY(customer_id) REFERENCES adck846_customers(customer_id)
);

CREATE TABLE adck846_tickets(
ticket_id INTEGER(3) NOT NULL,
price DECIMAL(4,2) NOT NULL,
quantity integer(2) NOT NULL,
customer_id INTEGER(5) NOT NULL,
card_number VARCHAR(20) NOT NULL,
PRIMARY KEY(ticket_id),
FOREIGN KEY(card_number) REFERENCES adck846_payments(card_number),
FOREIGN KEY(customer_id) REFERENCES adck846_customers(customer_id)
);

CREATE TABLE adck846_rides(
ride_id INTEGER(3) NOT NULL,
ride_name VARCHAR(25) NOT NULL,
max_height INTEGER(3) NOT NULL,
min_height INTEGER(3) NOT NULL,
PRIMARY KEY(ride_id)
);

CREATE TABLE adck846_staff(
staff_id INTEGER(3) NOT NULL,
first_name VARCHAR(15) NOT NULL,
last_name VARCHAR(15) NOT NULL,
gender VARCHAR(10) NOT NULL,
age INTEGER(2),
phone_number VARCHAR(15) NOT NULL UNIQUE,
PRIMARY KEY(staff_id)
);

CREATE TABLE adck846_ride_operators(
ride_id INTEGER(3) NOT NULL,
staff_id INTEGER(3) NOT NULL,
operator_rating INTEGER(1),    
FOREIGN KEY(ride_id) REFERENCES adck846_rides(ride_id),
FOREIGN KEY(staff_id) REFERENCES adck846_staff(staff_id)
);

CREATE TABLE adck846_restaurants(
restaurant_id INTEGER(3) NOT NULL,
name VARCHAR(20) NOT NULL,
hygiene_rating INTEGER(1) NOT NULL,
phone_number VARCHAR(15) NOT NULL UNIQUE,
PRIMARY KEY(restaurant_id)
);

CREATE TABLE adck846_restaurant_staff(
staff_id INTEGER(3) NOT NULL,
restaurant_id INTEGER(3) NOT NULL,
FOREIGN KEY(staff_id) REFERENCES adck846_staff(staff_id),
FOREIGN KEY(restaurant_id) REFERENCES adck846_restaurants(restaurant_id)
    );
    
/* SECTION 2 INSERT STATEMENTS */

INSERT INTO adck846_customers VALUES(100, 'Adam', 18, '07486729374', 'adamg@gmail.com'),
(101, 'Julian', 21, '0765362518', 'julian3@gmail.com'),
(102, 'Katie', 27, '07452942849', 'katie1@gmail.com'),
(103, 'Hunter', 29, '07453748902','hunter6@gmail.com'),
(104, 'Anas', 35, '07647381938', 'anas78@gmail.com'),
(105, 'Tariq', 22, '07656765421', 'tariq987@gmail.com'),
(106, 'Amy', 43, '07865431234', 'amy66@gmail.com'),
(107, 'Wendy', 22, '07436789862', 'wendy77@gmail.com'),
(108, 'Habib', 32, '07456738765', 'habib736@gmail.com'),
(109, 'Russell', 33, '07654345654', 'russell21@gmail.com'),
(110, 'Candace', 25, '0733241526', 'candace33@gmail.com'),
(111, 'Siri', 29, '07323455432', 'siri21@gmail.com'),
(112, 'Lewis', 32, '07456786543', 'lewis88@gmail.com'), 
(113, 'Olivia', 21, '07343567653', 'olivia21@gmail.com'),
(114, 'Zena', 26, '07454321253', 'zena53@gmail.com');


INSERT INTO adck846_payments VALUES('4466373928374657', 87.50, 210221, 100),
('4433639209753679', 137.50, 200219, 101),
('4435625362532874', 212.50, 200218, 102),
('4426889203847421', 125.00, 200217, 103),
('4451120367851124', 75.00, 210613, 104),
('4451087420156320', 112.50, 210809, 105),
('5501452001489652', 100.00, 200916, 106),
('5610248620345102',  50.00, 200916, 107),
('4445210357896541', 112.50, 210613, 108),
('5120325698541025', 200.00, 210315, 109),
('4512032147856321', 312.5, 200321, 110),
('5562012478532014', 37.50, 200321, 111),
('4451203541502654', 62.5, 200420, 112),
('5512032541205569', 100.00, 200517, 113),
('4451203256987510', 137.50, 200317, 114);



INSERT INTO adck846_tickets VALUES(555, 12.50, 7, 100, 4466373928374657),
(556, 12.5, 11, 101, '4433639209753679'),
(557, 12.5, 17, 102, '4435625362532874'),
(558, 12.5, 10, 103, '4426889203847421'),
(559, 12.5, 6,  104, '4451120367851124'),
(560, 12.5, 9,  105, '4451087420156320'),
(561, 12.5, 8,  106, '5501452001489652'),
(562, 12.5, 4,  107, '5610248620345102'),
(563, 12.5, 9,  108, '4445210357896541'),
(564, 12.5, 16, 109, '5120325698541025'),
(565, 12.5, 25, 110, '4512032147856321'),
(566, 12.5, 3,  111, '5562012478532014'),
(567, 12.5, 5,  112, '4451203541502654'),
(568, 12.5, 8,  113, '5512032541205569'),
(569, 12.5, 11, 114, '4451203256987510');


INSERT INTO adck846_rides VALUES(777, 'Slammer', 196, 140),
(778, 'Rapids', 200, 145),
(779, 'Crushems', 195, 151),
(780, 'Saw', 198, 146),
(781, 'Swarm', 205, 149),
(782, 'Mazey', 188, 154),
(783, 'Fright', 187, 155),
(784, 'Void', 199, 153),
(785, 'Inferno', 200, 144),
(786, 'Revenge', 198, 149);

INSERT INTO adck846_staff VALUES(355, 'Jason', 'Kidd', 'male', 42, '07583647583'),
(356, 'Steve', 'Nash', 'male', 21, '07456987541'),
(357, 'Mike', 'Keller', 'male', 23, '07458214035'),
(358, 'Stacey', 'Browne', 'female', 28, '07589654120'),
(359, 'Amy', 'Hibbert', 'female', 31, '074589658745'),
(360, 'Eddie', 'Alvarez', 'male', 18, '07698541232'),
(361, 'Lena', 'White', 'female', 24, '07968547854'),
(362, 'Ariana', 'Black', 'female', 28, '07865445362'),
(363, 'Kiara', 'Friend', 'female', 44, '07895214569'),
(364, 'Adam', 'Smith', 'male', 19, '07898765431'),
(365, 'Kate', 'Price', 'female', 22, '07865364758'),
(366, 'Abel', 'Little', 'male', 33, '07654567212'),
(367, 'Wendy', 'Osiris', 'female', 20, '07786352617'),
(368, 'Jarrett', 'Allen', 'male', 24, '07987637219'),
(369, 'Anas', 'Hashim', 'male', '18', '07384732182'),
(370, 'Tariq', 'Osman', 'male', '19', '07567653829'),
(371, 'Adrian', 'Peaty', 'male', 55, '07898765012'),
(372, 'Leon', 'Osman', 'male', 34, '07383489301'),
(373, 'Sharon', 'Adams', 'female', 42, '07463829102'),
(374, 'Phillip', 'Drury', 'male', 25, '07863728192');

INSERT INTO adck846_ride_operators VALUES(777,355,5),
(778,356,4),
(779,357,4),
(780,358,3),
(781,359,5),
(782,360,5),
(783,361,4),
(784,362,NULL),
(785,363,3),
(786,364,NULL);

INSERT INTO adck846_restaurants VALUES(800, 'Subs', 5, '02087364738'),
(801, 'PFC', 4, '02086652910'),
(802, 'Flavours', 3, '02076537829'),
(803, 'Grubs', 4, '02034593829'),
(804, 'Indie', 5, '02087836172'),
(805, 'Dreams', 4, '02076381930'),
(806, 'Pixy', 5, '02089201342'),
(807, 'Biskies', 4, '02085037672'),
(808, 'KRFC', 5, '02087329180'),
(809, 'Marlesam', 4, '02076372819');

INSERT INTO adck846_restaurant_staff VALUES(365,800),
(366,801),
(367,802),
(368,803),
(369,804),
(370,805),
(371,806),
(372,807),
(373,808),
(374,809);

/* SECTION 3 UPDATE STATEMENTS */

UPDATE adck846_rides SET ride_name = 'Slasher', max_height = 190
WHERE ride_id = 777;

UPDATE adck846_staff SET phone_number = '07846280382' 
WHERE staff_id = 374;

/* SECTION 4 SINGLE TABLE QUERIES */


/*

1)  If  a person is 147cm tall, list the rides they can go on?

SELECT ride_name
FROM adck846_rides
WHERE min_height <= 147;

*/


/* 

2)  List the names of restaurants who have a hygiene rating of atleast 4.

SELECT name
FROM adck846_restaurants
WHERE hygiene_rating >=4;

*/


/* 

3) What are the names of the female staff who are above the age of 25?

SELECT first_name, last_name
FROM adck846_staff
WHERE gender = 'female' AND age > 25
ORDER BY first_name ASC;

*/


/* 

4)  How many male staff are employed?

SELECT COUNT(DISTINCT staff_id)
FROM adck846_staff
WHERE gender = 'male';

*/


/*

5) List the name of customers whose First name begins with 'A' and their name is atleast 4 characters long.

SELECT name
FROM adck846_customers
WHERE name LIKE 'A%___';
 
*/


/* 

6)  List details of payments for March 2020.

    SELECT*
    FROM adck846_payments 
    WHERE transaction_date >= 200301 AND transaction_date <= 200331;

*/



/* SECTION 5 MULTIPLE TABLE QUERIES */


/* 
1) Find the names of all customers who's total ticket prices are above £100. 

SELECT adck846_customers.name
FROM adck846_customers
WHERE adck846_customers.customer_id IN(
SELECT adck846_payments.customer_id
FROM adck846_payments
WHERE adck846_payments.total_price > 100
);

*/


/* 

2)  List the name of customers who made a purchased more than 10 tickets after the year 2020

SELECT adck846_customers.name
FROM adck846_customers
WHERE adck846_customers.customer_id IN(
SELECT adck846_tickets.customer_id
FROM adck846_tickets
WHERE adck846_tickets.quantity > 10 and adck846_tickets.card_number IN(
SELECT adck846_payments.card_number
FROM adck846_payments
WHERE adck846_payments.transaction_date > 201231
));

*/


/* 
3)  List the names of satff members who work in restaurants with a hygiene rating of 4 and above.

SELECT adck846_staff.first_name, adck846_staff.last_name
FROM adck846_restaurant_staff
JOIN adck846_staff ON adck846_staff.staff_id = adck846_restaurant_staff.staff_id
JOIN adck846_restaurants ON adck846_restaurants.restaurant_id = adck846_restaurant_staff.restaurant_id
WHERE adck846_restaurants.hygiene_rating > 4; 

*/


/* 
4)  Find the card number and transaction date for the customer who made least ticket purchases.

SELECT adck846_payments.card_number, adck846_payments.transaction_date
FROM adck846_payments
WHERE adck846_payments.card_number IN(
SELECT adck846_tickets.card_number
FROM adck846_tickets
WHERE adck846_tickets.quantity = (SELECT MIN(adck846_tickets.quantity) FROM adck846_tickets));

*/



/* 
5) List the name of each staff member working on each ride along with their rating. 

SELECT adck846_staff.first_name, adck846_staff.last_name, adck846_rides.ride_name, adck846_ride_operators.operator_rating
FROM adck846_ride_operators 
JOIN adck846_staff ON adck846_staff.staff_id = adck846_ride_operators.staff_id
JOIN adck846_rides ON adck846_rides.ride_id = adck846_ride_operators.ride_id;

*/


/* 
6) Find how many male staff are working on a ride where the minimum height restriction is below 150cm.

SELECT COUNT(adck846_staff.staff_id)
FROM adck846_ride_operators 
JOIN adck846_staff ON adck846_staff.staff_id = adck846_ride_operators.staff_id 
JOIN adck846_rides ON adck846_rides.ride_id = adck846_ride_operators.ride_id
WHERE adck846_rides.min_height < 150 AND adck846_staff.gender = 'male';

*/



/* SECTION 6 DELETE ROWS (make sure the SQL is commented out in this section)

DELETE FROM adck846_restaurant_staff WHERE staff_id = 366;

DELETE FROM adck846_ride_operators WHERE ride_id = 778;

*/

/* SECTION 6 DROP TABLES (make sure the SQL is commented out in this section)

drop table adck846_ride_operators;
drop table adck846_restaurant_staff;
drop table adck846_staff;
drop table adck846_rides;
drop table adck846_restaurants;
drop table adck846_tickets;
drop table adck846_payments;
drop table adck846_customers;

*/
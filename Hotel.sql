ALTER SESSION SET CURRENT_SCHEMA = Salghamdi;

--Q1
Describe POBYRNE.H_HOTEL;

Drop TABLE MY_BOOKING;
Drop TABLE MY_HOTEL;
--Q2
create table my_hotel as(select * from pobyrne.h_hotel);

--Q3
SELECT * FROM MY_HOTEL;
--Q4
ALTER TABLE MY_HOTEL
ADD Nightly_Fee Number(10);
--Q5
update My_hotel set Nightly_fee= 150
WHERE HOTEL_NO>400;
--Q6
ALTER TABLE my_Hotel
ADD primary key(Hotel_No);
--Q7
Create Table my_booking(
BookCode number(8),
StartDate Date,
EndDate Date,
hotel_no number(8),
primary key (Bookcode),
constraint fk_Hotel_No FOREIGN key(hotel_no)
references my_hotel(hotel_no));

INSERT INTO my_booking Values(
                1234,
                '14-Nov-2018',
                '29-Jan-2019',
                400
                );
INSERT INTO my_booking Values(
                1235,
                '14-Nov-2018',
                '29-Jan-2019',
                500
                );
 INSERT INTO my_booking Values(
                1236,
                '14-Nov-2018',
                '29-Jan-2019',
                401
                );
INSERT INTO my_booking Values(
                1237,
                '14-Nov-2018',
                '29-Jan-2019',
                404
                ); 
                
 Select * from my_booking;               
 COMMIT;               











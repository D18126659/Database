ALTER SESSION SET CURRENT_SCHEMA = Salghamdi;

DROP TABLE HOMEWORK;

CREATE TABLE HOMEWORK(
Subject varchar(20), /*Subject key*/
Date_Submitted date default sysdate,/*Date key*/
Date_Given date default sysdate,/*Date key*/
Describtion varchar(20)/*Describtion key*/
);

alter table HOMEWORK
add constraint homework Primary key(Subject);

INSERT into HOMEWORK(Subject,Date_Given,Describtion) values( 'English', 
                                                            '5-FEB-2017',
                                                            'P24 Maths Magic' );
                
INSERT into HOMEWORK values('Maths',
                            '6-FEB-2017',
                            '8-Feb-2017',
                            'P24 Maths Magic');               

SELECT * from HOMEWORK;
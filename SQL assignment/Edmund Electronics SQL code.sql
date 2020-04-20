Drop Table Edmund_Repair;
Drop Table Edmund_Sales;
Drop Table Edmund_Stock;
Drop Table Product_Manufacturer;
Drop Table Customer;
Drop Table services;

CREATE TABLE services (
    center_id  NUMBER,
    Serv_name  VARCHAR2(30),
    address    VARCHAR2(100)
    
);

ALTER TABLE services ADD CONSTRAINT services_pk PRIMARY KEY ( center_id );

Insert into  services values (23543,'PC repair','1140  Walnut Avenue,Piscataway,NJ,New Jersey,08854');
Insert into  services values (26753,'Fridge repair','1140  Walnut Avenue,Piscataway,NJ,New Jersey,08854');
Insert into  services values (84375,'Tv repair','1140  Walnut Avenue,Piscataway,NJ,New Jersey,08854');
Insert into  services values (86356,'Home repair','1140  Walnut Avenue,Piscataway,NJ,New Jersey,08854');

CREATE TABLE customer (
    customer_id   NUMBER NOT NULL,
    Cust_name     VARCHAR2(30),
    address       VARCHAR2(100),
    phone_number  NUMBER,
    email         VARCHAR2(30)
);

ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY ( customer_id );

Insert into  customer values (23454,'Jeremy Fitzgerald','3311  Big Elm,Liberty, MO, Missouri, 64068',8167920431,'iqq0b5ydhm@meantinc.com');
Insert into  customer values (85646,'William shoemaker','2615  Wolf Pen Road, San Francisco,CA',6503767009,'xjx6lmqcmdk@fakegenerator.net');
Insert into  customer values (12345,'William Mccarthy','3110  Poplar Chase Lane,Pocatello,ID,Idaho',2083394268,'2cbiu4mxco@groupbuff.com');
Insert into  customer values (23145,'Aoife sayers','326  Centennial Farm Road,Defiance,IA,Iowa',7127481400,'k4lxtm37hbl@fakmailerator.net');

CREATE TABLE product_manufacturer (
    manufacture_id        VARCHAR2(4) NOT NULL,
    manufacturer_name     VARCHAR2(50),
    manufacturer_address  VARCHAR2(100),
    service_center_id     NUMBER NOT NULL
);

ALTER TABLE product_manufacturer ADD CONSTRAINT product_manufacturer_pk PRIMARY KEY ( manufacture_id );

ALTER TABLE product_manufacturer
    ADD CONSTRAINT fk_center_id FOREIGN KEY ( service_center_id )
        REFERENCES services ( center_id );
        
Insert into product_manufacturer values ('RG','Rohan Group','52  Withers Close,ALLANTON,TD11 2FW',23543);  
Insert into product_manufacturer values ('GAS','Gorczany and Sons','52  Withers Close,ALLANTON,TD11 2FW',26753);   
Insert into product_manufacturer values ('NM','Nikolaus-Mueller','52  Withers Close,ALLANTON,TD11 2FW',84375);   
Insert into product_manufacturer values ('ZL','Zieme LLC','52  Withers Close,ALLANTON,TD11 2FW',86356);   

CREATE TABLE edmund_stock (
    serial_number                        NUMBER NOT NULL,
    manufacturer_id                      Varchar2(10),
    brand                                VARCHAR2(50),
    gurarantee_length                    NUMBER,
    prod_cost                            NUMBER,
    quantity                             NUMBER, 
    product_manufacturer_manufacture_id  VARCHAR2(4) NOT NULL
);

ALTER TABLE edmund_stock ADD CONSTRAINT edmund_stock_pk PRIMARY KEY ( serial_number );

ALTER TABLE edmund_stock
    ADD CONSTRAINT fk_manufacturer_id FOREIGN KEY ( product_manufacturer_manufacture_id )
        REFERENCES product_manufacturer ( manufacture_id );
        
Insert into edmund_stock values (45647,'RG','Kormic',5,99,12,'RG');   
Insert into edmund_stock values (12346,'GAS','rolls',5,87,1,'RG'); 
Insert into edmund_stock values (87650,'NM','abby',5,67,6,'RG'); 
Insert into edmund_stock values (09366,'ZL','ROGO',5,19,56,'RG'); 
        
CREATE TABLE edmund_sales (
    sale_id                     NUMBER,
    --customer_id                 NUMBER,
    serial_id                   NUMBER,
    date_of_sale                DATE,
    gurantee_expiry             DATE,
    edmund_stock_serial_number  NUMBER NOT NULL,
    customer_customer_id        NUMBER NOT NULL
);

ALTER TABLE edmund_sales ADD CONSTRAINT edmund_sales_pk PRIMARY KEY ( sale_id );

ALTER TABLE edmund_sales
    ADD CONSTRAINT fk_customer_id FOREIGN KEY ( customer_customer_id )
        REFERENCES customer ( customer_id );

ALTER TABLE edmund_sales
    ADD CONSTRAINT fk_serial_num FOREIGN KEY ( edmund_stock_serial_number )
        REFERENCES edmund_stock ( serial_number );
        
Insert into edmund_sales values (6345,6453,'12-APR-2020','12-APR-2025',45647,23454);   
Insert into edmund_sales values (8345,1234,'18-APR-2020','12-APR-2025',12346,85646);  
Insert into edmund_sales values (7345,2345,'01-APR-2020','12-APR-2025',87650,12345);  
Insert into edmund_sales values (1675,5678,'02-APR-2020','12-APR-2025',09366,23145);  

CREATE TABLE edmund_repair (
    repair_id                   NUMBER,
    --serial_number               NUMBER,
    --sale_id                     NUMBER,
    --customer_id                 NUMBER,
    fault_description           VARCHAR2(100),
    start_repair_date           DATE,
    appliance_condition         VARCHAR2(50),
    repair_information          VARCHAR2(50),
    parts_replaced              VARCHAR2(50),
    end_repair_date             DATE,
    edmund_stock_serial_number  NUMBER NOT NULL,
    edmund_sales_sale_id        NUMBER NOT NULL,
    customer_customer_id        NUMBER NOT NULL,
    service_center_id           NUMBER NOT NULL
);

ALTER TABLE edmund_repair ADD CONSTRAINT edmund_repair_pk PRIMARY KEY ( repair_id );

ALTER TABLE edmund_repair
    ADD CONSTRAINT fk_center_idv1 FOREIGN KEY ( service_center_id )
        REFERENCES services ( center_id );

ALTER TABLE edmund_repair
    ADD CONSTRAINT fk_customer_idv2 FOREIGN KEY ( customer_customer_id )
        REFERENCES customer ( customer_id );

ALTER TABLE edmund_repair
    ADD CONSTRAINT fk_sales_id FOREIGN KEY ( edmund_sales_sale_id )
        REFERENCES edmund_sales ( sale_id );

ALTER TABLE edmund_repair
    ADD CONSTRAINT fk_serial_id FOREIGN KEY ( edmund_stock_serial_number )
        REFERENCES edmund_stock ( serial_number ); 

Insert into edmund_repair values (2356,'Badly damaged motor','23-MAR-2020',
                                    'Rusty','Need to change motor','Motor',
                                    '1-APR-2020',45647,6345,23454,23543);  
Insert into edmund_repair values (1111,'Air filter damaged','27-MAR-2020',
                                    'New','Need to change Filter','Air filter',
                                    '6-APR-2020',12346,8345,85646,26753);                                    
Insert into edmund_repair values (1356,'Paint polish wore off','2-APR-2020',
                                    'New','Needs new paint','Paint',
                                    '3-APR-2020',87650,7345,12345,84375);                                   
insert into edmund_repair values (64342,'Bolt needs to be changed','1-MAR-2020',
                                    'Slightly hit on the side','Need to change bolt','bolt',
                                    '2-MAR-2020',09366,1675,23145,86356);        
        
select * from services;  
select * from customer;
select * from product_manufacturer;
select * from edmund_stock;
select * from edmund_sales;

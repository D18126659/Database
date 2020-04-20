Drop Table Edmund_Repair;
Drop Table Edmund_Sales;
Drop Table Edmund_Stock;
Drop Table Product_Manufacturer;
Drop Table Customer;
Drop Table services;

--Services
CREATE TABLE services (
    center_id  NUMBER,
    Serv_name  VARCHAR2(30),
    address    VARCHAR2(100)
    
);

ALTER TABLE services ADD CONSTRAINT services_pk PRIMARY KEY ( center_id );

--Customer
CREATE TABLE customer (
    customer_id   NUMBER NOT NULL,
    Cust_name     VARCHAR2(30),
    address       VARCHAR2(100),
    phone_number  NUMBER,
    email         VARCHAR2(30)
);

ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY ( customer_id );

--Product_Manufacturer
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
        
        
--edmund_stock
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
        
--Edmund_Sales        
CREATE TABLE edmund_sales (
    sale_id                     NUMBER,
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
        
        
--Edmund_Repairs
CREATE TABLE edmund_repair (
    repair_id                   NUMBER,
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
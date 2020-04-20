--Services table
Insert into  services values (23543,'PC repair','1140  Walnut Avenue,Piscataway,NJ,New Jersey,08854');
Insert into  services values (26753,'Fridge repair','1140  Walnut Avenue,Piscataway,NJ,New Jersey,08854');
Insert into  services values (84375,'Tv repair','1140  Walnut Avenue,Piscataway,NJ,New Jersey,08854');
Insert into  services values (86356,'Home repair','1140  Walnut Avenue,Piscataway,NJ,New Jersey,08854');

-- Customer Table
Insert into  customer values (23454,'Jeremy Fitzgerald','3311  Big Elm,Liberty, MO, Missouri, 64068',8167920431,'iqq0b5ydhm@meantinc.com');
Insert into  customer values (85646,'William shoemaker','2615  Wolf Pen Road, San Francisco,CA',6503767009,'xjx6lmqcmdk@fakegenerator.net');
Insert into  customer values (12345,'William Mccarthy','3110  Poplar Chase Lane,Pocatello,ID,Idaho',2083394268,'2cbiu4mxco@groupbuff.com');
Insert into  customer values (23145,'Aoife sayers','326  Centennial Farm Road,Defiance,IA,Iowa',7127481400,'k4lxtm37hbl@fakmailerator.net');

--product_manufacturer
Insert into product_manufacturer values ('RG','Rohan Group','52  Withers Close,ALLANTON,TD11 2FW',23543);  
Insert into product_manufacturer values ('GAS','Gorczany and Sons','52  Withers Close,ALLANTON,TD11 2FW',26753);   
Insert into product_manufacturer values ('NM','Nikolaus-Mueller','52  Withers Close,ALLANTON,TD11 2FW',84375);   
Insert into product_manufacturer values ('ZL','Zieme LLC','52  Withers Close,ALLANTON,TD11 2FW',86356); 
Insert into product_manufacturer values ('RG','Rohan Group','57  Witcher Close,ALLANTON,TD11 2FW',23543);

--edmund_stock
Insert into edmund_stock values (45647,'RG','Kormic',5,99,12,'RG');   
Insert into edmund_stock values (12346,'GAS','rolls',5,87,1,'RG'); 
Insert into edmund_stock values (87650,'NM','abby',5,67,6,'RG'); 
Insert into edmund_stock values (09366,'ZL','ROGO',5,19,56,'RG'); 

--edmund_sales
Insert into edmund_sales values (6345,6453,'12-APR-2020','12-APR-2025',45647,23454);   
Insert into edmund_sales values (8345,1234,'18-APR-2020','12-APR-2025',12346,85646);  
Insert into edmund_sales values (7345,2345,'01-APR-2020','12-APR-2025',87650,12345);  
Insert into edmund_sales values (1675,5678,'02-APR-2020','12-APR-2025',09366,23145); 


--edmund_repair
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

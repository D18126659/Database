ALTER SESSION SET CURRENT_SCHEMA = Salghamdi;
DROP TABLE Cars;
CREATE TABLE Cars(
                    Name_Of_Driver varchar(50),
                    Email varchar(20),
                    color varchar(20),
                    Car_Owned varchar(20),
                    Registration varchar(30),
                    Capacity_Holds number(5)
                    );
                    
INSERT INTO Cars Values(
                'Ken',
                'Ken@dit.ie',
                'Silver',
                'Toyota lexus',
                '07d11211',
                6
                );
INSERT INTO Cars (Name_Of_Driver,Car_Owned,Registration) Values(
                'Ken',
                'Volkswagen Golf',
                '00D12831'
                );
INSERT INTO Cars (Name_Of_Driver,Car_Owned,Registration) Values(
                'Ken',
                'Audi 100',
                '90D10800'
                );
                
INSERT INTO Cars Values(
                'Fred Bloggers',
                'fred@ibm.ie',
                'Brown',
                'Ford escort',
                '80D2002',
                5
                ); 
INSERT INTO Cars Values(
                'Fred Bloggers',
                'fred@ibm.ie',
                'Black',
                'Ford Anglia',
                '50D03',
                4
                );
SELECT * from cars;
                
                
                
                
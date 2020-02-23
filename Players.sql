ALTER SESSION SET CURRENT_SCHEMA = Salghamdi;

DROP TABLE PLAYER;
DROP TABLE TEAM;
--A
create table TEAM as(select * from pobyrne.F_CLUB);
select * from pobyrne.F_CLUB;

--B
ALTER TABLE TEAM
RENAME COLUMN CLUBID TO TEAMID;
--C
ALTER TABLE TEAM
ADD TEAM_Captain varchar(10);

--D

ALTER TABLE TEAM
ADD primary key(TEAMID);

--E
CREATE TABLE PLAYER(
Players Varchar(9),
Dob DATE,
teamid varchar(8)
);

--F
INSERT INTO PLAYER Values(
                'Micheal',
                '14-Nov-1998',
                'Oliver Plunket'
                ); 
INSERT INTO PLAYER Values(
                'Richard',
                '14-Nov-1998',
                'st Brighids'
                );                 
INSERT INTO PLAYER Values(
                'Guy',
                '14-Nov-1998',
                'St Vincents'
                ); 
INSERT INTO PLAYER Values(
                'Wow',
                '14-Nov-1998',
                'Kilmacud crokes'
                ); 
--G
select * from team join player using (teamid);
COMMIT;

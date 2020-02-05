/*select * from cat;
select * from wk1student;
describe wk1student*/

/*select sysdate from dual;
select sysdate -1 from dual;
select currentdate from dual;*/

ALTER SESSION SET CURRENT_SCHEMA = Salghamdi;

CREATE TABLE CLIENT(
Cno number(6) Primary key,
CCurrent Char(6) Default 'Y'
                Not Null
                Check(CCurrent in('Y','N')),
CName Varchar2 (50) Not Null,
CDateOfBirth DATE Not Null,
CamountOwed Number(7,2),
CEmail Varchar2(50) Null Unique,
CNoChildren Number(2) Default 0,
CRenewDate DATE Default Sysdate+365
);

INSERT INTO CLIENT VALUES(
654321,
'Y',
'Fred',
'23-FEB-1940',
0,
'FRED@club.ie',
2,
'01-DEC-16'
);

insert into client (CNo,CName,CDateOfBirth) Values
(654325,'Harry','01-Jan-1995');
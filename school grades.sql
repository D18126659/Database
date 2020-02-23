alter session set current_schema = Pobyrne;
DESCRIBE school_grades;
select distinct(pstatus) from school_grades;
select distinct(activities) from school_grades;
--How Many students do activities??
select activities, count(*) from school_grades
group by activities;
select activities,school, count(*) from school_grades
group by activities, school;

select distinct(G1) from school_grades order by G1;
select distinct(G2) from school_grades order by G2;
select distinct(G2) from school_grades order by G3;

select G3, count(*) from school_grades group by G3;
select G3, count(*) from school_grades group by G3
ORDER by count(*) desc;

select school,G3, count(*) as score from school_grades
group by g3,school order by g3,school;

select g1,g2,g3, round ((g1+g2+g3)/3,1) as averageGrade
from school_grade where school = 'MS';

select g1,g2,g3, round ((g1+g2+g3)/3,0) as averageGrade
from school_grade where school = 'MS'
order by round((g1+g2+g3)/3,0);

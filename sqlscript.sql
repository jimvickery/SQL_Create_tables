REM   Script: University DB Create, populate, and query.
REM   Practice the creating the SQL for Dollar General

create table department ( 
department_id number(5),  
Name char(28),  
PRIMARY KEY ( department_id) );

INSERT INTO department(department_id, Name) VALUES (3, 'Biological Science' );

INSERT INTO department(department_id, Name) VALUES (5, 'Technology' );

INSERT INTO department(department_id, Name) VALUES (6, 'Humanities & Social Sciences' );

INSERT INTO department(department_id, Name) VALUES (2, 'Clinical Medicine' );

INSERT INTO department(department_id, Name) VALUES (4, 'Arts and Humanities' );

INSERT INTO department(department_id, Name) VALUES (1, 'Physical Sciences' );

CREATE TABLE professor (  
    professor_id number NOT NULL,  
    name char(28),  
    department_id   number, 
	salary number,  
    PRIMARY KEY (professor_id),  
    CONSTRAINT FK_department_id FOREIGN KEY (department_id)  
    REFERENCES department(department_id)  
);

INSERT INTO Professor (professor_id, Name, department_id, salary) VALUES (1, 'Nancy Daniels', 4, 7169 );

INSERT INTO Professor (professor_id, Name, department_id, salary)  VALUES (2, 'Billy Knight', 1,9793 );

INSERT INTO Professor (professor_id, Name, department_id, salary)  VALUES (3, 'Harry Myers', 4, 25194 );

INSERT INTO Professor (professor_id, Name, department_id, salary) VALUES (4, 'Antonio Rodriquez',3, 9686);

INSERT INTO Professor (professor_id, Name, department_id, salary) VALUES (5, 'Nicole Gome', 2, 30860);

INSERT INTO Professor (professor_id, Name, department_id, salary)  VALUES (6, 'Eugene George', 5, 10487);

INSERT INTO Professor (professor_id, Name, department_id, salary) VALUES (7, 'Gloria Vasquez', 4, 6353);

INSERT INTO Professor (professor_id, Name, department_id, salary) VALUES (8, 'Joyce Flores', 1, 25796);

INSERT INTO Professor (professor_id, Name, department_id, salary) VALUES (9, 'Daniel Gilbert', 5, 35678);

INSERT INTO Professor (professor_id, Name, department_id, salary)  VALUES (10, 'Matthew Stevens', 2, 26648);

create table course ( 
course_id number(5),  
Name char(44),  
department_id number(5),  
credits number(5),  
PRIMARY KEY (course_id) );

INSERT INTO course(course_id, Name, department_id, credits) VALUES (9, 'Clinical Biochemistry', 2, 3);

INSERT INTO course(course_id, Name, department_id, credits) VALUES (4, 'Astronomy', 1, 6);

INSERT INTO course(course_id, Name, department_id, credits) VALUES (10, 'Clinical Neuroscience', 2, 5);

INSERT INTO course(course_id, Name, department_id, credits) VALUES (1, 'Pure Mathematics and Mathematical Statistics', 1, 3);

INSERT INTO course(course_id, Name, department_id, credits) VALUES (6, 'Geography ', 1, 7);

INSERT INTO course(course_id, Name, department_id, credits) VALUES (8, 'Chemistry ', 1, 1);

INSERT INTO course(course_id, Name, department_id, credits) VALUES (5, 'Physics ', 1, 8);

INSERT INTO course(course_id, Name, department_id, credits) VALUES (3, 'Earth Science ', 1, 7);

INSERT INTO course(course_id, Name, department_id, credits) VALUES (7, 'Materials Science and Metallurgy', 1, 5);

INSERT INTO course(course_id, Name, department_id, credits) VALUES (2, 'Applied Mathematics and Theoretical Physics', 1, 5);

create table schedule (  
professor_id number,  
course_id number(5),  
semester number(5),  
year number(5),   
CONSTRAINT FK_professor_id FOREIGN KEY (professor_id)  
REFERENCES professor(professor_id),  
CONSTRAINT FK_course_id FOREIGN KEY (course_id)  
REFERENCES course(course_id));

INSERT INTO schedule(professor_id, course_id, semester, year) VALUES (4, 4, 3, 2003 );

INSERT INTO schedule(professor_id, course_id, semester, year) VALUES (3, 3, 1, 2011 );

INSERT INTO schedule(professor_id, course_id, semester, year) VALUES (1, 7, 5, 2011 );

INSERT INTO schedule(professor_id, course_id, semester, year) VALUES (7, 7, 1, 2010 );

INSERT INTO schedule(professor_id, course_id, semester, year) VALUES (4, 6, 1, 2001 );

INSERT INTO schedule(professor_id, course_id, semester, year) VALUES (9, 3, 1, 2012 );

INSERT INTO schedule(professor_id, course_id, semester, year) VALUES (10, 2, 4, 2009 );

INSERT INTO schedule(professor_id, course_id, semester, year) VALUES (1, 1, 3, 2014 );

INSERT INTO schedule(professor_id, course_id, semester, year) VALUES (1, 2, 3, 2008 );

INSERT INTO schedule(professor_id, course_id, semester, year) VALUES (1, 7, 5, 2007 );

SELECT * FROM professor;

SELECT DISTINCT professor.name as "Professor.Name", course.name as "Course.Name"  
from professor  
INNER join schedule   
ON schedule.professor_id = professor.professor_id  
INNER join course  
ON schedule.course_id = course.course_id  
INNER join department  
ON department.department_id = course.department_id;

SELECT DISTINCT professor.name as "Professor.Name", course.name as "Course.Name"  
from professor  
INNER join schedule   
ON schedule.professor_id = professor.professor_id  
INNER join course  
ON schedule.course_id = course.course_id  
INNER join department  
ON department.department_id = course.department_id;

SELECT DISTINCT professor.name as "Professor.Name", course.name as "Course.Name"  
from professor  
INNER join schedule   
ON schedule.professor_id = professor.professor_id  
INNER join course  
ON schedule.course_id = course.course_id  
INNER join department  
ON department.department_id = course.department_id;


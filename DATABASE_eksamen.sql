CREATE DATABASE IF NOT EXISTS SLIT;

USE SLIT;

create table if not exists user_ (
user_id varchar (7) not null,
user_name varchar (30) not null,
pass varchar (30) not null,
email varchar (200) not null,
primary key (user_id)
);

create table if not exists teacher (
teacher_id varchar (7) not null,
teacher_name varchar (16) not null,
assistant_teacher boolean,
user_id varchar (7),
primary key (teacher_id),
foreign key (user_id) references user_(user_id)
);

create table if not exists student (
student_id varchar (7) not null,
student_name varchar (16),
user_id varchar (7),
primary key (student_id),
foreign key (user_id) references user_(user_id)
);

 create table if not exists course (
 course_id varchar (7) not null,
 course_name varchar (12),
 primary key (course_id)
 );
 
 create table if not exists notifications (
 notification_date DATETIME DEFAULT NOW(),
 notification_info varchar (300),
 course_id varchar (7) not null,
 foreign key (course_id) references course (course_id)
 );

CREATE TABLE IF NOT EXISTS assignment (
assignment_title VARCHAR(50),
assignment_desc VARCHAR(500),
assignment_due DATETIME
);

CREATE TABLE IF NOT EXISTS calendar (
calendar_id VARCHAR(7) NOT NULL,
calendar_title VARCHAR(50),
calendar_desc VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS delivery (
delivery_title VARCHAR(50),
delivery_demands VARCHAR (500),
delivery_desc VARCHAR(500),
delivery_due DATETIME
);

CREATE TABLE IF NOT EXISTS pointsystem (
delivery_maxpoints int,
delivery_leastpoints int,
delivery_points int
);

CREATE TABLE IF NOT EXISTS feedback (
feedback_date DATETIME DEFAULT NOW(),
feedback_info VARCHAR(500)
);



INSERT INTO user_ (user_id, user_name, pass, email)
VALUES ('u001', 'Hallgeir', 'password', 'teacher@gmail.com');

INSERT INTO user_ (user_id, user_name, pass, email)
VALUES ('u002', 'Robert', 'password', 'student@gmail.com');


select user_name, pass from user_ where user_name = 'Hallgeir' and pass = 'password';
select user_name, pass from user_ where user_name = 'Robert' and pass = 'password';


INSERT into course(course_id, course_name)
values (1, 'IS-109');

INSERT into course(course_id, course_name)
values (2, 'IS-110');

INSERT INTO notifications(notification_info, course_id)
values('hei', 1);

INSERT INTO notifications(notification_info, course_id)
values('søpm', 1);

select * from notifications where course_id = 1;
select notification_info, notification_date from notifications where course_id = 1;

select * from notifications;



INSERT INTO teacher (teacher_id, teacher_name, assistant_teacher, user_id)
VALUES ('t001', 'Hallgeir Nilsen', false, 'u001');



INSERT INTO student (student_id, student_name, user_id)
VALUES ('s001', 'Håkon Sveen', 'u002');



INSERT INTO course (course_id, course_name)
VALUES ('c001', 'IS-200');


INSERT INTO assignment (assignment_title, assignment_desc, assignment_due)
VALUES ('Mandatory 1', 'Lag en  database', '2018-10-18 23:00:00');


INSERT INTO calendar (calendar_id, calendar_title, calendar_desc)
VALUES ('ca001', 'IT og informasjonssystemer bachelor høst 2018', 'beskrivelse av kalenderen');



INSERT INTO delivery (delivery_title, delivery_demands, delivery_desc, delivery_due)
VALUES ('Mandatory 4', 'create some queries in MySQL', 'extend the SLIT database', '2018-11-23 23:59:59');



INSERT INTO pointsystem (delivery_maxpoints, delivery_leastpoints, delivery_points)
VALUES (100, 0, 80);



INSERT INTO feedback (feedback_date, feedback_info)
VALUES ('2018-11-06 16:44:13', 'Bra jobba, men ser at dere kunne skrevet litt mer på oppgave 4A');




drop table feedback;
drop table pointsystem;
drop table delivery;
drop table calendar;
drop table assignment;
drop table notifications;
drop table course;
drop table student;
drop table teacher;
drop table user_;
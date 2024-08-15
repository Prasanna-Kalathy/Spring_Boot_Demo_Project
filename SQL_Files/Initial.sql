show databases;
create database learning_management_system;
use learning_management_system;
show tables;

INSERT INTO teacher_login (password,ausername)VALUES ('troot','troot');
INSERT INTO admin_login (password,ausername)VALUES ('aroot','aroot');


select * from teacher_login where tusername = 'troot';
select * from hibernate_sequence;

INSERT INTO teacher (id, address1, address2, city, date_of_birth, department, email, firstname, gender, lastname, middlename, state, teacher_id, tusername, zipcode)
VALUES 
(1, '123 Main St', 'Apt 4B', 'Springfield', '1985-07-21', 'Mathematics', 'john.doe@example.com', 'John', 'M', 'Doe', 'Michael', 'IL', 'T001', 'jdoe', '62704'),
(2, '456 Elm St', 'Suite 12', 'Shelbyville', '1990-05-14', 'Science', 'jane.smith@example.com', 'Jane', 'F', 'Smith', 'Anne', 'IN', 'T002', 'jsmith', '46176'),
(3, '789 Oak St', NULL, 'Capital City', '1978-11-30', 'English', 'robert.brown@example.com', 'Robert', 'M', 'Brown', 'Lee', 'OH', 'T003', 'rbrown', '43085'),
(4, '101 Pine St', 'Unit 7', 'Ogdenville', '1982-02-19', 'History', 'linda.white@example.com', 'Linda', 'F', 'White', 'Marie', 'CA', 'T004', 'lwhite', '90210'),
(5, '202 Maple St', 'Floor 3', 'North Haverbrook', '1975-09-12', 'Art', 'michael.green@example.com', 'Michael', 'M', 'Green', 'Alan', 'TX', 'T005', 'mgreen', '73301');

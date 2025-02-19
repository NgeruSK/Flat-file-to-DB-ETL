USE Scool;

ALTER DATABASE School
SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

ALTER DATABASE Scool
Modify name = School;

ALTER DATABASE School
SET MULTI_USER WITH ROLLBACK IMMEDIATE;

ALTER TABLE Parents
ALTER COLUMN student_adm_no NVARCHAR(20)

DROP TABLE Students

DROP DATABASE School

CREATE TABLE Students(
_id INT IDENTITY(1,1) PRIMARY KEY,
adm_no VARCHAR(200) UNIQUE NOT NULL,
first_name VARCHAR(200) NOT NULL,
last_name VARCHAR(200) NOT NULL,
dob DATE,
created_at DATETIME DEFAULT GETDATE()
)

SELECT *
FROM sys.key_constraints
WHERE parent_object_id = OBJECT_ID('Students');

EXEC sp_help 'Students';

ALTER TABLE Students
ADD CONSTRAINT UQ_adm_nos UNIQUE(adm_no);

ALTER TABLE Parents
DROP CONSTRAINT FK__Parents__created__3E52440B;

SchoolETL.dbo.Parents: FK__Parents__created__3E52440B

CREATE TABLE Parents(
_id INT IDENTITY(1,1) PRIMARY KEY,
student_adm_no VARCHAR(200) UNIQUE NOT NULL,
first_name VARCHAR(200) NOT NULL,
last_name VARCHAR(200) NOT NULL,
phones VARCHAR(20) UNIQUE NOT NULL,
created_at DATETIME DEFAULT GETDATE()
FOREIGN KEY(student_adm_no) REFERENCES Students(adm_no) ON DELETE CASCADE
)


CREATE DATABASE SchoolETL;

CREATE TABLE Students(
_id INT IDENTITY(1,1) PRIMARY KEY,
adm_no NVARCHAR(10) UNIQUE NOT NULL,
first_name NVARCHAR(100) NOT NULL,
last_name NVARCHAR(100) NOT NULL,
dob DATE,
created_at DATETIME DEFAULT GETDATE()
)


CREATE TABLE Parents(
_id INT IDENTITY(1,1) PRIMARY KEY,
student_adm_no NVARCHAR(10) UNIQUE NOT NULL,
first_name NVARCHAR(100) NOT NULL,
last_name NVARCHAR(100) NOT NULL,
phones NVARCHAR(20) UNIQUE NOT NULL,
created_at DATETIME DEFAULT GETDATE()
FOREIGN KEY(student_adm_no) REFERENCES Students(adm_no) ON DELETE CASCADE
)

ALTER TABLE Parents
ADD CONSTRAINT Fkn_adm
FOREIGN KEY(student_adm_no) REFERENCES Students(adm_no) ON DELETE CASCADE

GRANT ADMINISTER BULK OPERATIONS TO [5CG3200SWF-KEN\skn2132]

SELECT * FROM sys.server_principals WHERE name = '5CG3200SWF-KEN\skn2132';

ALTER SERVER ROLE sysadmin ADD MEMBER [5CG3200SWF-KEN\skn2132];


USE master;
GRANT CONNECT SQL TO sa;

ALTER LOGIN sa WITH PASSWORD = 'Simon678n';

ALTER LOGIN sa ENABLE;

insert into Students(adm_no,first_name,last_name, dob )
values('13783','Ngeru','Simon','1998-09-01')


Select * from Students

DELETE FROM Students where _id > 26

SELECT 
    blocking_session_id,
    session_id,
    status,
    wait_type,
    wait_time,
    wait_resource
FROM sys.dm_exec_requests
WHERE blocking_session_id <> 0;


ALTER TABLE Parents
alter column student_adm_no nvarchar(50)

SELECT SERVERPROPERTY('Collation');
CREATE TABLE Students(
_id SERIAL PRIMARY KEY,
student_adm_no VARCHAR(30) UNIQUE NOT NULL,
student_first_name VARCHAR(200) NOT NULL,
student_last_name VARCHAR(200) NOT NULL,
student_dob DATE,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

INSERT INTO Students(student_adm_no,student_first_name,student_last_name,student_dob)
VALUES('13783','Simon','Ngeru','1998-09-01')

SELECT * FROM Parents;

SELECT * FROM Students;

CREATE TABLE Parents(
_id Serial PRIMARY KEY,
student_id INT NOT NULL,
parent_first_name VARCHAR(200) NOT NULL,
parent_last_name VARCHAR(200) NOT NULL,
parent_phones VARCHAR(40),
FOREIGN KEY (student_id) REFERENCES Students(_id) ON DELETE CASCADE
)

INSERT INTO Parents(student_id,parent_first_name,parent_last_name,parent_phones)
VALUES('2','Abdalla','Rashid','0789654654')

DELETE FROM Students where _id = 1

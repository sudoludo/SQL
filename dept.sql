CREATE DATABASE IF NOT EXISTS department;

USE department;

CREATE TABLE IF NOT EXISTS subjects (
    subject_id INT PRIMARY KEY,
    subject VARCHAR(50)    
);

INSERT INTO subjects(subject_id, subject)
VALUES
    (101, 'Science'),
    (102, 'English'),
    (103, 'Nepali');

CREATE TABLE IF NOT EXISTS teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50),
    subject_id INT,
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

INSERT INTO teachers(teacher_id, teacher_name, subject_id)
VALUES
    (1, 'Mr. ram', 101),
    (2, 'Ms. shyam', 102),
    (3, 'Mrs. hari', 103);

CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    gender ENUM('Male', 'Female', 'Other')
);

INSERT INTO students(student_id, student_name, age, gender)
VALUES
    (1, 'ram', 16, 'Male'),
    (2, 'shyam', 17, 'Female'),
    (3, 'hari', 16, 'Male');

CREATE TABLE IF NOT EXISTS classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50),
    subject_id INT,
    teacher_id INT,
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

INSERT INTO classes(class_id, class_name, subject_id, teacher_id)
VALUES
    (1, 'Class A', 101, 1),
    (2, 'Class B', 102, 2),
    (3, 'Class C', 103, 3);

USE rudder_assignments;
CREATE TABLE STUDENT (
    StdID INT AUTO_INCREMENT PRIMARY KEY,
    StdName VARCHAR(30) NOT NULL,
    Class VARCHAR(10),
    Percentage DECIMAL(5,2),
    DOB DATE
);
INSERT INTO STUDENT (StdName, Class, Percentage, DOB) VALUES
('Amit Sharma', 'TE', 78.50, '2002-05-12'),
('Neha Patil', 'TE', 82.30, '2001-11-23'),
('Rahul Verma', 'SE', 69.40, '2003-02-14'),
('Priya Singh', 'BE', 91.20, '2000-07-19'),
('Karan Mehta', 'SE', 74.00, '2002-09-30'),
('Sneha Joshi', 'TE', 88.10, '2001-03-11'),
('Rohit Gupta', 'BE', 67.50, '2000-12-25'),
('Pooja Desai', 'SE', 79.60, '2003-01-05'),
('Arjun Nair', 'TE', 84.90, '2002-06-17'),
('Meera Iyer', 'BE', 92.40, '2000-08-21'),
('Sahil Khan', 'SE', 73.20, '2003-04-10'),
('Anjali Roy', 'TE', 85.00, '2001-10-02'),
('Vikas Yadav', 'BE', 68.80, '2000-03-28'),
('Divya Shah', 'SE', 90.50, '2003-07-14'),
('Nikhil Jain', 'TE', 76.30, '2002-11-09'),
('Riya Kapoor', 'BE', 89.70, '2000-05-26'),
('Aditya Kulkarni', 'SE', 72.10, '2003-09-18'),
('Simran Kaur', 'TE', 87.60, '2001-01-30'),
('Manish Tiwari', 'BE', 65.40, '2000-02-12'),
('Kavya Reddy', 'SE', 93.10, '2003-06-22');
ALTER TABLE STUDENT
ADD TeacherID VARCHAR(20);
ALTER TABLE STUDENT
MODIFY TeacherID INT;
ALTER TABLE STUDENT
DROP COLUMN TeacherID;
UPDATE STUDENT
SET StdName = 'David Smith',
    Percentage = 86
WHERE StdID = 11;
DELETE FROM STUDENT
WHERE StdID = 13;

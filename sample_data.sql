-- Departments
INSERT INTO Departments VALUES
(1, 'Computer Science', 'Block A'),
(2, 'Information Technology', 'Block B'),
(3, 'Electronics', 'Block C'),
(4, 'Mechanical', 'Block D'),
(5, 'Civil', 'Block E'),
(6, 'Electrical', 'Block F'),
(7, 'Mathematics', 'Block G'),
(8, 'Physics', 'Block H'),
(9, 'Chemistry', 'Block I'),
(10, 'Biotechnology', 'Block J');

-- Students
INSERT INTO Students VALUES
(101, 'Aarav', 'Sharma', 'aarav@example.com', 2023, 1),
(102, 'Diya', 'Patel', 'diya@example.com', 2022, 2),
(103, 'Rahul', 'Verma', 'rahul@example.com', 2023, 3),
(104, 'Sneha', 'Rao', 'sneha@example.com', 2021, 4),
(105, 'Karan', 'Singh', 'karan@example.com', 2022, 5),
(106, 'Priya', 'Das', 'priya@example.com', 2023, 6),
(107, 'Rohan', 'Mehta', 'rohan@example.com', 2021, 7),
(108, 'Ananya', 'Roy', 'ananya@example.com', 2022, 8),
(109, 'Vikram', 'Nair', 'vikram@example.com', 2023, 9),
(110, 'Neha', 'Joshi', 'neha@example.com', 2021, 10);

-- Instructors
INSERT INTO Instructors VALUES
(201, 'John', 'Miller', 'john@example.com', 1),
(202, 'Emma', 'Wilson', 'emma@example.com', 2),
(203, 'David', 'Brown', 'david@example.com', 3),
(204, 'Sophia', 'Taylor', 'sophia@example.com', 4),
(205, 'James', 'Moore', 'james@example.com', 5),
(206, 'Olivia', 'Thomas', 'olivia@example.com', 6),
(207, 'Liam', 'White', 'liam@example.com', 7),
(208, 'Mia', 'Harris', 'mia@example.com', 8),
(209, 'Noah', 'Martin', 'noah@example.com', 9),
(210, 'Ava', 'Clark', 'ava@example.com', 10);

-- Courses
INSERT INTO Courses VALUES
(301, 'Database Systems', 4, 30, 201),
(302, 'Operating Systems', 4, 30, 202),
(303, 'Computer Networks', 3, 25, 203),
(304, 'Data Structures', 4, 35, 204),
(305, 'Thermodynamics', 3, 40, 205),
(306, 'Power Systems', 4, 20, 206),
(307, 'Linear Algebra', 3, 30, 207),
(308, 'Quantum Physics', 4, 20, 208),
(309, 'Organic Chemistry', 3, 25, 209),
(310, 'Genetics', 4, 30, 210);

-- Enrollments
INSERT INTO Enrollments VALUES
(401, 101, 301, '2026-01-10', NULL),
(402, 102, 302, '2026-01-11', 'A'),
(403, 103, 303, '2026-01-12', 'B'),
(404, 104, 304, '2026-01-13', NULL),
(405, 105, 305, '2026-01-14', 'A'),
(406, 106, 306, '2026-01-15', 'B'),
(407, 107, 307, '2026-01-16', 'A'),
(408, 108, 308, '2026-01-17', NULL),
(409, 109, 309, '2026-01-18', 'C'),
(410, 110, 310, '2026-01-19', 'B');
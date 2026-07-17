BEGIN TRANSACTION;

-- Enroll Student 101 into Course 302
INSERT INTO Enrollments (student_id, course_id)
VALUES (101, 302);

-- Reduce available seats in the course
UPDATE Courses
SET available_seats = available_seats - 1
WHERE course_id = 302;

COMMIT;
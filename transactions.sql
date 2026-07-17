BEGIN TRANSACTION;

UPDATE Courses
SET available_seats = available_seats - 1
WHERE course_id = 302
  AND available_seats > 0;

INSERT INTO Enrollments (student_id, course_id)
VALUES (101, 302);

COMMIT;
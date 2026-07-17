-- Index on student email
CREATE INDEX idx_students_email
ON Students(email);

-- Index on course name
CREATE INDEX idx_courses_name
ON Courses(course_name);

-- Composite index on enrollments
CREATE INDEX idx_enrollments_student_course
ON Enrollments(student_id, course_id);
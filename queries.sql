-- 1. IN
SELECT * FROM Students
WHERE department_id IN (1, 2, 3);

-- 2. BETWEEN
SELECT * FROM Courses
WHERE credits BETWEEN 3 AND 4;

-- 3. IS NULL
SELECT * FROM Enrollments
WHERE grade IS NULL;

-- 4. GROUP BY
SELECT department_id, COUNT(*) AS total_students
FROM Students
GROUP BY department_id;

-- 5. GROUP BY + HAVING
SELECT department_id, COUNT(*) AS total_students
FROM Students
GROUP BY department_id
HAVING COUNT(*) >= 1;

-- 6. INNER JOIN
SELECT s.first_name, s.last_name, c.course_name
FROM Students s
INNER JOIN Enrollments e ON s.student_id = e.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;

-- 7. LEFT JOIN
SELECT s.first_name, c.course_name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
LEFT JOIN Courses c ON e.course_id = c.course_id;

-- 8. RIGHT JOIN (SQLite 3.39+ supports RIGHT JOIN)
SELECT c.course_name, i.first_name
FROM Courses c
RIGHT JOIN Instructors i
ON c.instructor_id = i.instructor_id;

-- 9. Scalar Subquery
SELECT *
FROM Courses
WHERE credits >
(
    SELECT AVG(credits)
    FROM Courses
);

-- 10. Correlated Subquery
SELECT *
FROM Students s
WHERE EXISTS
(
    SELECT 1
    FROM Enrollments e
    WHERE e.student_id = s.student_id
);

-- 11. EXISTS
SELECT *
FROM Courses c
WHERE EXISTS
(
    SELECT 1
    FROM Enrollments e
    WHERE e.course_id = c.course_id
);

-- 12. UNION
SELECT first_name AS name
FROM Students
UNION
SELECT first_name
FROM Instructors;

-- 13. Window Function
SELECT
    first_name,
    department_id,
    ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY first_name) AS row_num
FROM Students;
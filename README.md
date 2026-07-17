# CampusConnect - Part 1: Database Design

## Database Engine

- SQLite 3.51.0

## Project Structure

```
campusconnect-part1-database/
├── README.md
├── schema.sql
├── sample_data.sql
├── queries.sql
├── indexes.sql
└── transactions.sql
```

## How to Run

1. Create a new SQLite database:
   ```
   sqlite3 campusconnect.db
   ```
2. Execute the files in the following order:
   ```
   .read schema.sql
   .read sample_data.sql
   .read queries.sql
   .read indexes.sql
   .read transactions.sql
   ```

## Normalization

### Unnormalized Form (UNF)

Initially, student, course, instructor, and department information could exist in a single table with repeated data.

### First Normal Form (1NF)

Data is divided into rows and columns, and each column stores only atomic values.

### Second Normal Form (2NF)

Partial dependencies are removed by separating students, courses, instructors, departments, and enrollments into different tables.

### Third Normal Form (3NF)

Transitive dependencies are eliminated. Every non-key attribute depends only on its table's primary key.

## Index Justification

- `idx_students_email` speeds up student lookups by email.
- `idx_courses_name` speeds up course searches.
- `idx_enrollments_student_course` improves enrollment lookups and join performance.

The `grade` column was intentionally not indexed because it has low selectivity and is updated frequently.

## Transactions and Isolation

The transaction in `transactions.sql` enrolls a student in a course and decreases the available seats. Both operations are executed atomically.

### Isolation Levels

- Read Uncommitted
- Read Committed
- Repeatable Read
- Serializable

Using the Serializable isolation level prevents issues such as lost updates and ensures data consistency during concurrent transactions.

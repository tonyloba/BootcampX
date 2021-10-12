
SELECT (
  SELECT count(assignments)
  FROM assignments
)-count(assignment_submissions) as total_incomplete
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';



-- template 1 :
-- SELECT (
--   SELECT count(*)
--   FROM table_name
-- ) as total, other_column
-- FROM other_table_name
-- ORDER BY total;

--  template 2 :
-- SELECT * FROM (
--   SELECT something_id
--   FROM someTable
--   WHERE something
-- ) as sub_table;


-- get a single number for the average number of students per cohort? If we treat nested select as a table, we essentially want to find the average of the total_students column :

-- SELECT avg(total_students) as average_students
-- FROM (
--   SELECT count(students) as total_students, cohorts.name as cohort_name
--   FROM students
--   JOIN cohorts on cohorts.id = cohort_id
--   GROUP BY cohorts
-- ) as totals_table;


-- serch within IN:
-- SELECT assignments.name
-- FROM assignments 
-- WHERE id NOT IN
-- (
--   SELECT assignment_id
--   FROM assignment_submissions
--   JOIN students ON students.id = student_id
--   WHERE students.name = 'Ibrahim Schimmel'
-- );

-- Template :
-- SELECT * FROM table
-- WHERE id IN (
--   SELECT something_id
--   FROM someTable
--   WHERE something
-- );

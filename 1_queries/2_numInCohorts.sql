SELECT count(*)
FROM students
WHERE cohort_id BETWEEN 1 AND 3; 
-- or IN(1,2,3)
s
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name;
HAVING count(assignment_submissions.*) < 100;

--  calculate the total number of assignment_submissions for each student individually
-- for each students.name, instead of the entire query. To do this, we use the GROUP BY clause.
-- ONLY for A currently enrolled student has a null end_date.
-- ALSO currently enrolled students who's total submissions are less than 100;
-- Explanation : 
-- GROUP BY allows us to combine the results based on a column so an aggregate can be applied to each group.
-- HAVING allows us to filter our results based on the result of an aggregate function.
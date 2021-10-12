SELECT SUM(assignment_submissions.duration) 
AS total_duration 
FROM assignment_submissions  
LEFT JOIN students 
ON  assignment_submissions.student_id = students.id 
WHERE students.name = 'Ibrahim Schimmel';
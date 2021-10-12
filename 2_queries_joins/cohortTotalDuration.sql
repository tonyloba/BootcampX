SELECT SUM(assignment_submissions.duration) 
AS total_duration 
FROM assignment_submissions  
LEFT JOIN students 
ON  assignment_submissions.student_id = students.id
LEFT JOIN cohorts 
ON cohorts.id = students.cohort_id 
WHERE cohorts.name = 'FEB12';
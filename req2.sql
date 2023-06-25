SELECT student_id,
    surname,
    COUNT(grade)
FROM grade
    NATURAL JOIN student
GROUP BY student_id,
    surname
ORDER BY COUNT(grade) DESC;
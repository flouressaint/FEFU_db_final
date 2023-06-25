SELECT 'Семенов' AS surname,
    grade
FROM grade
WHERE student_id = (
        SELECT student_id
        FROM student
        WHERE surname = 'Семенов'
    );
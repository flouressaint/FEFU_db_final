SELECT 'Структуры данных',
    COUNT(student_id)
FROM grade
WHERE discipline_id = (
        SELECT discipline_id
        FROM discipline
        WHERE discipline_name = 'Структуры данных'
    );
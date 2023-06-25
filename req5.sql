SELECT group_name
FROM education_group
WHERE group_number IN (
        SELECT group_number
        FROM student
        WHERE student_id IN (
                SELECT student_id
                FROM grade
                WHERE discipline_id = (
                        SELECT discipline_id
                        FROM discipline
                        WHERE discipline_name = 'Структуры данных'
                    )
            )
    );
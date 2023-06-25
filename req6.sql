SELECT COUNT(discipline_id)
FROM discipline
WHERE discipline_id in (
        SELECT discipline_id
        FROM grade
        WHERE student_id IN (
                SELECT student_id
                FROM student
                WHERE group_number IN (
                        SELECT group_number
                        FROM education_group
                        WHERE group_name = 'ПИ-31'
                    )
            )
    )
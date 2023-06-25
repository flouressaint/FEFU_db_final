SELECT discipline_name
FROM discipline
WHERE discipline_id IN (
        SELECT discipline_id
        FROM grade
        GROUP BY discipline_id
        HAVING AVG(grade) >= 4.0
    );
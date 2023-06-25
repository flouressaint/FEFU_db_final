SELECT group_number,
    surname,
    name,
    birth_year,
    'младший' as stat
FROM student S
WHERE birth_year =(
        SELECT MAX(birth_year)
        FROM student
        WHERE group_number = S.group_number
    )
UNION
SELECT group_number,
    SURNAME,
    name,
    birth_year,
    'старший' as stat
FROM student S
WHERE birth_year =(
        SELECT MIN(birth_year)
        FROM student
        WHERE group_number = S.group_number
    )
ORDER BY group_number,
    stat;
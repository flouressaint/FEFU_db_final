CREATE TABLE education_group(
    group_number SERIAL PRIMARY KEY,
    group_name VARCHAR(200)
);
-- CREATE TABLE speciality(
--     speciality_id SERIAL PRIMARY KEY,
--     speciality_name VARCHAR(200)
-- );
CREATE TABLE discipline(
    discipline_id SERIAL PRIMARY KEY,
    discipline_name VARCHAR(200),
    discipline_hours INTEGER,
    discipline_type BOOLEAN,
    -- speciality_id INTEGER,
    semester_number INTEGER -- FOREIGN KEY (speciality_id) REFERENCES speciality(speciality_id)
);
CREATE TABLE student(
    student_id SERIAL PRIMARY KEY,
    surname VARCHAR(200),
    name VARCHAR(200),
    birth_year INTEGER,
    education_form BOOLEAN,
    group_number INTEGER,
    FOREIGN KEY (group_number) REFERENCES education_group(group_number)
);
CREATE TABLE grade(
    grade_id SERIAL PRIMARY KEY,
    student_id INTEGER,
    discipline_id INTEGER,
    grade INTEGER,
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (discipline_id) REFERENCES discipline(discipline_id)
);
INSERT INTO education_group(group_name)
VALUES ('ПИ-31'),
    ('ПИ-32'),
    ('ПИ-33'),
    ('ПИ-34');
INSERT INTO student(
        surname,
        name,
        birth_year,
        education_form,
        group_number
    )
VALUES ('Иванов', 'Иван', 2001, true, 1),
    ('Петров', 'Петр', 2002, false, 2),
    ('Сидиков', 'Александр', 2000, true, 1),
    ('Сидельников', 'Аркадий', 2003, true, 1),
    ('Смолов', 'Смол', 1999, false, 2),
    ('Семенов', 'Семен', 2001, true, 3),
    ('Соколов', 'Валентин', 2000, false, 1),
    ('Карпова', 'Елена', 1998, true, 3),
    ('Козлов', 'Сержан', 2002, false, 4),
    ('Устинова', 'Елена', 2001, true, 4),
    ('Чернова', 'Анастасия', 2003, true, 1);
-- INSERT INTO speciality(speciality_name)
-- VALUES ('Компьютерные сети'),
--     ('Элеваторные системы'),
--     ('Математические методики'),
--     ('Программная инженерия'),
--     ('Прикладная математика и информатика');
INSERT INTO discipline(
        discipline_name,
        discipline_hours,
        discipline_type,
        semester_number
    )
VALUES ('Математические операции', 3, true, 2),
    ('Справедливознания', 3, true, 1),
    ('Структуры данных', 3, true, 4),
    ('Русский язык', 3, true, 3),
    ('Информатика', 3, true, 2),
    ('История', 3, true, 3);
INSERT INTO grade(student_id, discipline_id, grade)
VALUES (1, 1, 5),
    (1, 2, 4),
    (1, 3, 3),
    (3, 1, 5),
    (3, 5, 4),
    (3, 3, 3),
    (4, 6, 5),
    (4, 2, 4),
    (4, 4, 3),
    (5, 1, 5),
    (5, 2, 4),
    (5, 3, 3),
    (6, 1, 5),
    (6, 2, 4);
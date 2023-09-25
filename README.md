### Таблицы:
- education_group
  - group_number SERIAL PRIMARY KEY,
  - group_name VARCHAR(200)
- discipline
  - discipline_id SERIAL PRIMARY KEY
  - discipline_name VARCHAR(200)
  - discipline_hours INTEGER
  - discipline_type BOOLEAN
  - semester_number INTEGER
- student
  - student_id SERIAL PRIMARY KEY
  - surname VARCHAR(200)
  - name VARCHAR(200)
  - birth_year INTEGER
  - education_form BOOLEAN
  - group_number INTEGER
  - FOREIGN KEY (group_number) REFERENCES education_group(group_number)
- grade
  - grade_id SERIAL PRIMARY KEY
  - student_id INTEGER
  - discipline_id INTEGER
  - grade INTEGER
  - FOREIGN KEY (student_id) REFERENCES student(student_id)
  - FOREIGN KEY (discipline_id) REFERENCES discipline(discipline_id)
### Задачи:
1. Вывести все оценки конкретного ученика.
2. Вывести список учеников, упорядоченный по количеству полученных оценок.
3. Для каждой учебной группы вывести фамилии самого старшего и самого младшего студентов.
4. Посчитать количество учащихся на данной дисциплине.
5. Вывести хотя бы одну учебную группу, для которой существует заданная дисциплина
6. Для указанной учебной группы посчитать количество дисциплин
7. Вывести названия дисциплин, у которых средняя оценка выше 4.

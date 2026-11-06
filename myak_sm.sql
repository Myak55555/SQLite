--задание 1
SELECT g.group_name, COUNT(s.student_id) AS Число_студентов
FROM groups g
JOIN students s ON g.group_id = s.group_id
GROUP BY g.group_id, g.group_name
ORDER BY Число_студентов DESC;

--задание 2
SELECT s.last_name, s.first_name, g.group_name, ROUND(AVG(gr.grade), 2) AS Средний_балл
FROM students s
JOIN grades gr ON s.student_id = gr.student_id
JOIN groups g ON s.group_id = g.group_id
GROUP BY s.student_id, s.last_name, s.first_name, g.group_name
ORDER BY Средний_балл DESC;

--задание 3
SELECT s.last_name, s.first_name
FROM students s
JOIN grades gr ON s.student_id = gr.student_id
GROUP BY s.student_id, s.last_name, s.first_name
HAVING AVG(gr.grade) = 5.0;

--задание 4
SELECT t.last_name, t.first_name, COUNT(gr.grade_id) AS Число_оценок
FROM teachers t
JOIN grades gr ON t.teacher_id = gr.teacher_id
GROUP BY t.teacher_id, t.last_name, t.first_name
ORDER BY Число_оценок DESC
LIMIT 1;
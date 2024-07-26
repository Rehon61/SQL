--1. Запрос на получение всех студентов и курсов, на которые они записаны
/*SELECT s.first_name,s.last_name, c.course_name
FROM Enrollments en
JOIN Courses c ON c.id = en.course_id
JOIN Students s ON s.id = en.student_id*/

--2. Запрос на получение всех курсов и преподавателей, которые их преподают
/*SELECT t.first_name,t.last_name, c.course_name
FROM Schedule sc
JOIN Courses c ON c.id = sc.course_id
JOIN Teachers t ON t.id = sc.teacher_id*/

--3.Запрос на получение всех записей студентов на курсы и их оценок
/*SELECT s.*, c.credits
FROM Enrollments en
JOIN Students s ON  s.id = en.student_id
JOIN Courses c ON c.id = en.course_id*/
--4.Запрос на получение всех преподавателей и курсов, которые они ведут, включая курсы без преподавателей
/*SELECT t.first_name, t.last_name, c.course_name
FROM Courses c
LEFT JOIN Schedule sc ON c.id = sc.course_id
LEFT JOIN Teachers t ON t.id = sc.teacher_id;*/


--5.Запрос на получение всех курсов и студентов, записанных на них, включая курсы без студентов
/*SELECT s.first_name, s.last_name, c.course_name
FROM Courses c
LEFT JOIN Enrollments en ON c.id = en.course_id
LEFT JOIN Students s ON s.id = en.student_id;*/

--6.Запрос на получение всех студентов и курсов, на которые они записаны, включая студентов без записей на курсы
/*SELECT s.first_name, s.last_name, c.course_name
FROM Courses c
JOIN Enrollments en ON c.id = en.course_id
RIGHT JOIN Students s ON s.id = en.student_id;*/

--7.Запрос на получение всех курсов и расписания занятий по ним
/*SELECT c.course_name, sc.class_date
FROM Schedule sc
JOIN Courses c ON sc.course_id = c.id*/

--8.Запрос на получение всех студентов и их оценок по курсам, включая студентов без оценок
/*SELECT s.first_name, s.last_name,c.credits
FROM Enrollments en
JOIN Courses c ON c.id = en.course_id
RIGHT JOIN Students s ON s.id = en.student_id*/

--9.Запрос на получение всех курсов и преподавателей, которые их ведут, включая курсы без преподавателей
/*SELECT c.course_name, t.first_name, t.last_name
FROM Courses c
LEFT JOIN Schedule sc ON c.id = sc.course_id
LEFT JOIN Teachers t ON t.id = sc.teacher_id;*/
--10.Запрос на получение всех преподавателей и курсов, которые они ведут, включая преподавателей без курсов
/*SELECT t.first_name, t.last_name, c.course_name
FROM Teachers t
LEFT JOIN Schedule sc ON t.id = sc.teacher_id
LEFT JOIN Courses c ON c.id = sc.course_id;*/
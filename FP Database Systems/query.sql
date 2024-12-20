--
ALTER TABLE payment
	DROP FOREIGN KEY fk_payment_method;
DROP TABLE payment_method;
ALTER TABLE payment
	DROP COLUMN method_id,
	ADD column  payment_method VARCHAR(20);


--1
SELECT p.*
FROM Payment p
JOIN Registration r ON p.registration_ID = r.registration_ID
JOIN Courses c ON r.course_ID = c.course_ID
WHERE c.course_title = 'Geografi';

--2
SELECT 
    Tutors.tutor_full_name,
    Courses.course_title
FROM Tutors
JOIN Courses ON Tutors.course_ID = Courses.course_ID;

--3
SELECT 
    Users.user_full_name,
    Courses.course_title,
    Lessons.lesson_title,
    Quizzes.quiz_title,
    Quiz_Attempts.attempt_score
FROM Quiz_Attempts
JOIN Users ON Quiz_Attempts.user_ID = Users.user_ID
JOIN Quizzes ON Quiz_Attempts.quiz_ID = Quizzes.quiz_ID
JOIN Lessons ON Quizzes.lesson_ID = Lessons.lesson_ID
JOIN Courses ON Lessons.course_ID = Courses.course_ID
ORDER BY Users.user_full_name, Courses.course_title;

--4
SELECT 
    c.course_ID, 
    c.course_title, 
    SUM(p.payment_amount) AS Total_Pendapatan
FROM Courses c
JOIN Registration r ON c.course_ID = r.course_ID
JOIN Payment p ON r.registration_ID = p.registration_ID
GROUP BY c.course_ID, c.course_title
ORDER BY Total_Pendapatan DESC;

-- 4
SELECT *
FROM Users
WHERE user_full_name LIKE 'A%' 
   OR user_full_name LIKE 'E%' 
   OR user_full_name LIKE 'I%' 
   OR user_full_name LIKE 'O%' 
   OR user_full_name LIKE 'U%';


--5
SELECT 
	C.*,
    AVG(R.review_rating) AS Rating
FROM courses C
JOIN review R ON C.course_ID = R.course_ID
GROUP BY C.course_ID
ORDER BY Rating DESC;

--6
SELECT 
    t.tutor_ID, 
    t.tutor_full_name, 
    t.tutor_specialization, 
    COUNT(DISTINCT r.user_ID) AS total_users
FROM Tutors t
JOIN Courses c ON t.course_ID = c.course_ID
JOIN Registration r ON c.course_ID = r.course_ID
GROUP BY t.tutor_ID, t.tutor_full_name, t.tutor_specialization
ORDER BY total_users DESC
LIMIT 3;

--7
SELECT 
    l.lesson_title,
    ROUND(AVG(qa.attempt_score), 2) AS average_score
FROM Lessons l
JOIN Courses c ON l.course_ID = c.course_ID
JOIN Quizzes q ON l.lesson_ID = q.lesson_ID
JOIN Quiz_Attempts qa ON q.quiz_ID = qa.quiz_ID
WHERE c.course_title = 'Biologi'
GROUP BY l.lesson_title
ORDER BY average_score DESC;

--8
SELECT u.user_username, u.user_full_name, u.user_email
FROM users u
WHERE u.user_ID IN (
    SELECT qa.user_ID
    FROM Quiz_Attempts qa
    JOIN Quizzes q ON qa.quiz_ID = q.quiz_ID
    WHERE q.quiz_title = 'Quiz Geometri' AND qa.attempt_passed = TRUE
);

--9
SELECT U.user_ID, U.user_username, U.user_full_name
FROM users U 
WHERE U.user_ID NOT IN (
    SELECT R.user_ID
    FROM review R 
);

--10
SELECT 
    c.course_title,
    (
        SELECT SUM(p.payment_amount)
        FROM Payment p
        JOIN Registration r ON p.registration_ID = r.registration_ID
        WHERE r.course_ID = c.course_ID
    ) AS total_payments
FROM Courses c
WHERE (
    SELECT AVG(total_payment)
    FROM (
        SELECT SUM(p1.payment_amount) AS total_payment
        FROM Payment p1
        JOIN Registration r1 ON p1.registration_ID = r1.registration_ID
        GROUP BY r1.course_ID
    ) avg_payment
) < (
    SELECT SUM(p.payment_amount)
    FROM Payment p
    JOIN Registration r ON p.registration_ID = r.registration_ID
    WHERE r.course_ID = c.course_ID
)
ORDER BY total_payments DESC;

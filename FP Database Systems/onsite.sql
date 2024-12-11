WITH cte AS (
    SELECT 
        courses.course_ID,
        courses.course_title AS Course_Title,
        ROUND(AVG(review.review_rating), 2) AS Average_Rating,
        ROUND(AVG(quiz_attempts.attempt_score), 2) AS Average_Score
    FROM courses
    JOIN lessons ON courses.course_ID = lessons.course_ID
    JOIN quizzes ON lessons.lesson_ID = quizzes.lesson_ID
    JOIN quiz_attempts ON quizzes.quiz_ID = quiz_attempts.quiz_ID
    JOIN review ON courses.course_ID = review.course_ID
    JOIN registration ON registration.course_ID = courses.course_ID
    JOIN users ON users.user_ID = registration.user_ID
    GROUP BY courses.course_ID, courses.course_title
)
SELECT cte.Course_Title, cte.Average_Score, cte.Average_Rating, COUNT(registration.course_ID) AS Total_Users
FROM registration
JOIN cte ON registration.course_ID = cte.course_ID
WHERE cte.Average_Score = (SELECT MIN(Average_Score) FROM cte)
GROUP BY cte.Course_Title, cte.Average_Score, cte.Average_Rating;

CREATE DATABASE OnlineCourse;
USE OnlineCourse;

-- Table: Users
CREATE TABLE Users (
    user_ID CHAR(5) PRIMARY KEY,
    user_username VARCHAR(20),
    user_email VARCHAR(50),
    user_full_name VARCHAR(100),
    user_phone VARCHAR(20),
    user_registration_date DATE
);

-- Table: Courses
CREATE TABLE Courses (
    course_ID CHAR(5) PRIMARY KEY,
    course_title VARCHAR(50),
    course_description VARCHAR(255),
    course_price DECIMAL(10,2),
    course_category VARCHAR(100)
);

-- Table: Tutors
CREATE TABLE Tutors (
    tutor_ID CHAR(5) PRIMARY KEY,
    tutor_full_name VARCHAR(100),
    tutor_email VARCHAR(50),
    tutor_specialization VARCHAR(50),
    course_ID CHAR(5)
);

-- Table: Lessons
CREATE TABLE Lessons (
    lesson_ID CHAR(5) PRIMARY KEY,
    lesson_title VARCHAR(50),
    lesson_duration_minute INT,
    course_ID CHAR(5)
);

-- Table: Quizzes
CREATE TABLE Quizzes (
    quiz_ID CHAR(5) PRIMARY KEY,
    quiz_title VARCHAR(50),
    quiz_duration_minute INT,
    quiz_pass_grade INT,
    lesson_ID CHAR(5)
);

-- Table: Quiz Attempts
CREATE TABLE Quiz_Attempts (
    user_ID CHAR(5),
    quiz_ID CHAR(5),
    attempt_date DATETIME,
    attempt_score INT,
    attempt_passed BOOLEAN,
    PRIMARY KEY (user_ID, quiz_ID)
);

-- Table: Registration
CREATE TABLE Registration (
    registration_ID CHAR(5) PRIMARY KEY,
    registration_time DATETIME,
    registration_status VARCHAR(10),
    user_ID CHAR(5),
    course_ID CHAR(5)
);

-- Table: Payment
CREATE TABLE Payment (
    payment_ID CHAR(5) PRIMARY KEY,
    payment_amount DECIMAL(10,2),
    payment_method VARCHAR(20),
    payment_status VARCHAR(10),
    registration_ID CHAR(5)
);

-- Table: Review
CREATE TABLE Review (
    review_ID CHAR(5) PRIMARY KEY,
    review_rating INT,
    review_comment VARCHAR(255),
    review_time DATETIME,
    course_ID CHAR(5),
    user_ID CHAR(5)
);

-- Add Foreign Keys
ALTER TABLE Tutors
    ADD CONSTRAINT fk_tutor_course FOREIGN KEY (course_ID) REFERENCES Courses(course_ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Lessons
    ADD CONSTRAINT fk_lesson_course FOREIGN KEY (course_ID) REFERENCES Courses(course_ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Quizzes
    ADD CONSTRAINT fk_quiz_lesson FOREIGN KEY (lesson_ID) REFERENCES Lessons(lesson_ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Quiz_Attempts
    ADD CONSTRAINT fk_attempt_user FOREIGN KEY (user_ID) REFERENCES Users(user_ID)
    ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT fk_attempt_quiz FOREIGN KEY (quiz_ID) REFERENCES Quizzes(quiz_ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Registration
    ADD CONSTRAINT fk_registration_user FOREIGN KEY (user_ID) REFERENCES Users(user_ID)
    ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT fk_registration_course FOREIGN KEY (course_ID) REFERENCES Courses(course_ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Payment
    ADD CONSTRAINT fk_payment_registration FOREIGN KEY (registration_ID) REFERENCES Registration(registration_ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Review
    ADD CONSTRAINT fk_review_course FOREIGN KEY (course_ID) REFERENCES Courses(course_ID)
    ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT fk_review_user FOREIGN KEY (user_ID) REFERENCES Users(user_ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

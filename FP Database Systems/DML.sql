-- DML
-- Insert data into Users
INSERT INTO Users (user_ID, user_username, user_email, user_full_name, user_phone, user_registration_date) VALUES
('U0001', 'john_doe', 'john@gmail.com', 'John Doe', '1234567890', '2023-01-10'),
('U0002', 'jane_smith', 'jane@gmail.com', 'Jane Smith', '0987654321', '2023-01-11'),
('U0003', 'alice_jones', 'alice@gmail.com', 'Alice Jones', '1231231234', '2023-01-12'),
('U0004', 'bob_brown', 'bob@gmail.com', 'Bob Brown', '4321432143', '2023-01-13'),
('U0005', 'charlie_black', 'charlie@gmail.com', 'Charlie Black', '5678567856', '2023-01-14'),
('U0006', 'david_white', 'david@gmail.com', 'David White', '6789678967', '2023-01-15'),
('U0007', 'eve_green', 'eve@gmail.com', 'Eve Green', '7890789078', '2023-01-16'),
('U0008', 'frank_yellow', 'frank@gmail.com', 'Frank Yellow', '8901890189', '2023-01-17');

-- Insert data into Courses
INSERT INTO Courses (course_ID, course_title, course_description, course_price, course_category) VALUES
('C0001', 'Introduction to Programming', 'Learn the basics of programming.', 99.99, 'Programming'),
('C0002', 'Web Development', 'Build websites from scratch.', 149.99, 'Web Development'),
('C0003', 'Data Science', 'Analyze data and make predictions.', 199.99, 'Data Science'),
('C0004', 'Machine Learning', 'Introduction to machine learning concepts.', 249.99, 'Machine Learning'),
('C0005', 'Digital Marketing', 'Learn digital marketing strategies.', 79.99, 'Marketing'),
('C0006', 'Graphic Design', 'Create stunning graphics and designs.', 89.99, 'Design'),
('C0007', 'Cybersecurity Basics', 'Understand the fundamentals of cybersecurity.', 129.99, 'Security'),
('C0008', 'Mobile App Development', 'Develop apps for mobile devices.', 199.99, 'Development');

-- Insert data into Tutors
INSERT INTO Tutors (tutor_ID, tutor_full_name, tutor_email, tutor_specialization, course_ID) VALUES
('T0001', 'Michael Scott', 'michael@gmail.com', 'Programming', 'C0001'),
('T0002', 'Pam Beesly', 'pam@gmail.com', 'Web Development', 'C0002'),
('T0003', 'Jim Halpert', 'jim@gmail.com', 'Data Science', 'C0003'),
('T0004', 'Dwight Schrute', 'dwight@gmail.com', 'Machine Learning', 'C0004'),
('T0005', 'Angela Martin', 'angela@gmail.com', 'Marketing', 'C0005'),
('T0006', 'Oscar Martinez', 'oscar@gmail.com', 'Design', 'C0006'),
('T0007', 'Kevin Malone', 'kevin@gmail.com', 'Security', 'C0007'),
('T0008', 'Stanley Hudson', 'stanley@gmail.com', 'Development', 'C0008');

-- Insert data into Lessons
INSERT INTO Lessons (lesson_ID, lesson_title, lesson_duration_minute, course_ID) VALUES
('L0001', 'Variables and Data Types', 30, 'C0001'),
('L0002', 'Control Structures', 45, 'C0001'),
('L0003', 'HTML Basics', 25, 'C0002'),
('L0004', 'CSS Fundamentals', 40, 'C0002'),
('L0005', 'Introduction to Data', 35, 'C0003'),
('L0006', 'Data Visualization', 50, 'C0003'),
('L0007', 'Supervised Learning', 60, 'C0004'),
('L0008', 'Unsupervised Learning', 55, 'C0004'),
('L0009', 'SEO Basics', 30, 'C0005'),
('L0010', 'Social Media Marketing', 45, 'C0005'),
('L0011', 'Design Principles', 40, 'C0006'),
('L0012', 'Color Theory', 30, 'C0006'),
('L0013', 'Network Security', 50, 'C0007'),
('L0014', 'Ethical Hacking', 60, 'C0007'),
('L0015', 'Android Development', 70, 'C0008'),
('L0016', 'iOS Development', 65, 'C0008');

-- Insert data into Quizzes for each lesson
INSERT INTO Quizzes (quiz_ID, quiz_title, quiz_duration_minute, quiz_pass_grade, lesson_ID) VALUES
('Q0001', 'Variables and Data Types Quiz', 20, 70, 'L0001'),
('Q0002', 'Control Structures Quiz', 25, 75, 'L0002'),
('Q0003', 'HTML Basics Quiz', 15, 60, 'L0003'),
('Q0004', 'CSS Fundamentals Quiz', 20, 65, 'L0004'),
('Q0005', 'Introduction to Data Quiz', 30, 70, 'L0005'),
('Q0006', 'Data Visualization Quiz', 35, 75, 'L0006'),
('Q0007', 'Supervised Learning Quiz', 40, 80, 'L0007'),
('Q0008', 'Unsupervised Learning Quiz', 35, 75, 'L0008'),
('Q0009', 'SEO Basics Quiz', 20, 70, 'L0009'),
('Q0010', 'Social Media Marketing Quiz', 25, 75, 'L0010'),
('Q0011', 'Design Principles Quiz', 30, 70, 'L0011'),
('Q0012', 'Color Theory Quiz', 25, 65, 'L0012'),
('Q0013', 'Network Security Quiz', 40, 80, 'L0013'),
('Q0014', 'Ethical Hacking Quiz', 45, 85, 'L0014'),
('Q0015', 'Android Development Quiz', 50, 80, 'L0015'),
('Q0016', 'iOS Development Quiz', 50, 80, 'L0016');

-- Insert data into Quiz Attempts
INSERT INTO Quiz_Attempts (user_ID, quiz_ID, attempt_date, attempt_score) VALUES
('U0001', 'Q0001', '2023-01-20 10:00:00', 80),
('U0002', 'Q0003', '2023-01-21 11:00:00', 50),
('U0003', 'Q0005', '2023-01-22 12:00:00', 90),
('U0004', 'Q0008', '2023-01-23 13:00:00', 70),
('U0005', 'Q0010', '2023-01-24 14:00:00', 65),
('U0006', 'Q0011', '2023-01-25 15:00:00', 75),
('U0007', 'Q0014', '2023-01-26 16:00:00', 85),
('U0008', 'Q0015', '2023-01-27 17:00:00', 60);

-- Insert data into Registration
INSERT INTO Registration (registration_ID, registration_time, registration_status, user_ID, course_ID) VALUES
('R0001', '2023-01-10 09:00:00', 'active', 'U0001', 'C0001'),
('R0002', '2023-01-11 10:00:00', 'active', 'U0002', 'C0002'),
('R0003', '2023-01-12 11:00:00', 'active', 'U0003', 'C0003'),
('R0004', '2023-01-13 12:00:00', 'active', 'U0004', 'C0004'),
('R0005', '2023-01-14 13:00:00', 'active', 'U0005', 'C0005'),
('R0006', '2023-01-15 14:00:00', 'active', 'U0006', 'C0006'),
('R0007', '2023-01-16 15:00:00', 'active', 'U0007', 'C0007'),
('R0008', '2023-01-17 16:00:00', 'active', 'U0008', 'C0008');

-- Insert data into Payment
INSERT INTO Payment (payment_ID, payment_amount, payment_method, payment_status, registration_ID) VALUES
('P0001', 99.99, 'Credit Card', 'Completed', 'R0001'),
('P0002', 149.99, 'PayPal', 'Completed', 'R0002'),
('P0003', 199.99, 'Bank Transfer', 'Completed', 'R0003'),
('P0004', 249.99, 'Credit Card', 'Completed', 'R0004'),
('P0005', 79.99, 'PayPal', 'Completed', 'R0005'),
('P0006', 89.99, 'Credit Card', 'Completed', 'R0006'),
('P0007', 129.99, 'Bank Transfer', 'Completed', 'R0007'),
('P0008', 199.99, 'Credit Card', 'Completed', 'R0008');

-- Insert data into Review
INSERT INTO Review (review_ID, review_rating, review_comment, review_time, course_ID, user_ID) VALUES
('RV001', 5, 'Excellent course! Very informative.', '2023-01-18 10:00:00', 'C0001', 'U0001'),
('RV002', 4, 'Great content, but could use more examples.', '2023-01-19 11:00:00', 'C0002', 'U0002'),
('RV003', 5, 'Best course on mobile app development!', '2023-01-25 17:00:00', 'C0008', 'U0008');

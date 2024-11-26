INSERT INTO Users (user_ID, user_username, user_email, user_full_name, user_phone, user_registration_date) VALUES
('U0001', 'johndoe', 'johndoe@example.com', 'John Doe', '081234567890', '2023-10-01'),
('U0002', 'janedoe', 'janedoe@example.com', 'Jane Doe', '081298765432', '2023-10-05'),
('U0003', 'miketan', 'miketan@example.com', 'Mike Tan', '082112345678', '2023-10-12'),
('U0004', 'sarawong', 'sarawong@example.com', 'Sara Wong', '083345678910', '2023-10-15'),
('U0005', 'alextan', 'alextan@example.com', 'Alex Tan', '082567891234', '2023-10-18'),
('U0006', 'lisabrown', 'lisabrown@example.com', 'Lisa Brown', '081789123456', '2023-10-20'),
('U0007', 'paulchan', 'paulchan@example.com', 'Paul Chan', '083123456789', '2023-10-22'),
('U0008', 'emilyclark', 'emilyclark@example.com', 'Emily Clark', '082891234567', '2023-10-25');

-- Insert into Courses
INSERT INTO Courses (course_ID, course_title, course_description, course_price, course_category) VALUES
('C0001', 'Python for Beginners', 'Learn the basics of Python programming.', 99.99, 'Programming'),
('C0002', 'Data Science 101', 'An introduction to data science concepts.', 149.99, 'Data Science'),
('C0003', 'Web Development Bootcamp', 'Master the fundamentals of web development.', 199.99, 'Web Development'),
('C0004', 'Advanced JavaScript', 'Deep dive into advanced JavaScript techniques.', 129.99, 'Programming'),
('C0005', 'Digital Marketing Basics', 'Understand the basics of digital marketing.', 79.99, 'Marketing'),
('C0006', 'Graphic Design Mastery', 'Learn graphic design from scratch.', 99.99, 'Design'),
('C0007', 'AI and Machine Learning', 'Introduction to AI and ML concepts.', 249.99, 'AI'),
('C0008', 'Cybersecurity Essentials', 'Learn the essentials of cybersecurity.', 119.99, 'IT Security');

-- Insert into Tutors
INSERT INTO Tutors (tutor_ID, tutor_full_name, tutor_email, tutor_specialization, course_ID) VALUES
('T0001', 'Dr. Alice Brown', 'alicebrown@course.com', 'Python', 'C0001'),
('T0002', 'Prof. Bob Green', 'bobgreen@course.com', 'Data Science', 'C0002'),
('T0003', 'Mr. Charles White', 'charleswhite@course.com', 'Web Development', 'C0003'),
('T0004', 'Ms. Diana Blue', 'dianablue@course.com', 'JavaScript', 'C0004'),
('T0005', 'Dr. Edward Black', 'edwardblack@course.com', 'Marketing', 'C0005'),
('T0006', 'Ms. Fiona Grey', 'fionagrey@course.com', 'Graphic Design', 'C0006'),
('T0007', 'Dr. George Yellow', 'georgeyellow@course.com', 'AI', 'C0007'),
('T0008', 'Mr. Henry Red', 'henryred@course.com', 'Cybersecurity', 'C0008');

-- Insert into Lessons
INSERT INTO Lessons (lesson_ID, lesson_title, lesson_duration_minute, course_ID) VALUES
-- Lessons for Course C0001
('L0001', 'Introduction to Python', 30, 'C0001'),
('L0002', 'Variables and Data Types', 40, 'C0001'),
('L0003', 'Control Structures', 50, 'C0001'),
-- Lessons for Course C0002
('L0004', 'Data Science Overview', 50, 'C0002'),
('L0005', 'Data Visualization', 60, 'C0002'),
('L0006', 'Introduction to Machine Learning', 45, 'C0002'),
-- Lessons for Course C0003
('L0007', 'HTML Basics', 30, 'C0003'),
('L0008', 'CSS for Beginners', 40, 'C0003'),
('L0009', 'JavaScript Basics', 35, 'C0003'),
-- Lessons for Course C0004
('L0010', 'JavaScript Essentials', 50, 'C0004'),
('L0011', 'Advanced JS Features', 60, 'C0004'),
('L0012', 'JS Frameworks Overview', 55, 'C0004'),
-- Lessons for Course C0005
('L0013', 'Introduction to Marketing', 35, 'C0005'),
('L0014', 'SEO Basics', 40, 'C0005'),
('L0015', 'Social Media Marketing', 50, 'C0005'),
-- Lessons for Course C0006
('L0016', 'Graphic Design Fundamentals', 30, 'C0006'),
('L0017', 'Color Theory', 35, 'C0006'),
('L0018', 'Typography Essentials', 40, 'C0006'),
-- Lessons for Course C0007
('L0019', 'AI Basics', 45, 'C0007'),
('L0020', 'Machine Learning Algorithms', 50, 'C0007'),
('L0021', 'Deep Learning Concepts', 60, 'C0007'),
-- Lessons for Course C0008
('L0022', 'Introduction to Cybersecurity', 30, 'C0008'),
('L0023', 'Types of Threats', 40, 'C0008'),
('L0024', 'Best Practices for Security', 45, 'C0008');


-- Insert into Quizzes
INSERT INTO Quizzes (quiz_ID, quiz_title, quiz_duration_minute, quiz_pass_grade, lesson_ID) VALUES
-- Quizzes for Course C0001
('Q0001', 'Python Basics Quiz', 20, 70, 'L0001'),
('Q0002', 'Data Types Quiz', 15, 65, 'L0002'),
('Q0003', 'Control Structures Quiz', 25, 75, 'L0003'),
-- Quizzes for Course C0002
('Q0004', 'Data Science Overview Quiz', 30, 80, 'L0004'),
('Q0005', 'Data Visualization Quiz', 20, 70, 'L0005'),
('Q0006', 'Intro to ML Quiz', 25, 75, 'L0006'),
-- Quizzes for Course C0003
('Q0007', 'HTML Basics Quiz', 15, 60, 'L0007'),
('Q0008', 'CSS Quiz', 20, 70, 'L0008'),
('Q0009', 'JavaScript Basics Quiz', 25, 65, 'L0009'),
-- Quizzes for Course C0004
('Q0010', 'JS Essentials Quiz', 25, 75, 'L0010'),
('Q0011', 'Advanced JS Quiz', 30, 80, 'L0011'),
('Q0012', 'JS Frameworks Quiz', 25, 70, 'L0012'),
-- Quizzes for Course C0005
('Q0013', 'Marketing Basics Quiz', 20, 65, 'L0013'),
('Q0014', 'SEO Quiz', 20, 70, 'L0014'),
('Q0015', 'Social Media Marketing Quiz', 25, 75, 'L0015'),
-- Quizzes for Course C0006
('Q0016', 'Graphic Design Fundamentals Quiz', 20, 70, 'L0016'),
('Q0017', 'Color Theory Quiz', 20, 65, 'L0017'),
('Q0018', 'Typography Quiz', 25, 75, 'L0018'),
-- Quizzes for Course C0007
('Q0019', 'AI Basics Quiz', 25, 75, 'L0019'),
('Q0020', 'ML Algorithms Quiz', 30, 80, 'L0020'),
('Q0021', 'Deep Learning Quiz', 35, 85, 'L0021'),
-- Quizzes for Course C0008
('Q0022', 'Cybersecurity Intro Quiz', 20, 70, 'L0022'),
('Q0023', 'Threat Types Quiz', 25, 75, 'L0023'),
('Q0024', 'Security Practices Quiz', 25, 75, 'L0024');


-- Insert into Quiz Attempts
INSERT INTO Quiz_Attempts (user_ID, quiz_ID, attempt_date, attempt_score, attempt_passed) VALUES
('U0001', 'Q0001', '2023-11-01 10:30:00', 85, TRUE),
('U0002', 'Q0002', '2023-11-02 14:00:00', 60, TRUE),
('U0003', 'Q0003', '2023-11-03 09:15:00', 78, TRUE),
('U0004', 'Q0014', '2023-11-04 11:20:00', 72, TRUE),
('U0005', 'Q0005', '2023-11-05 16:45:00', 68, TRUE),
('U0006', 'Q0016', '2023-11-06 18:00:00', 65, TRUE),
('U0007', 'Q0007', '2023-11-07 12:10:00', 90, TRUE),
('U0008', 'Q0018', '2023-11-08 14:25:00', 80, TRUE);

-- Insert into Registration
INSERT INTO Registration (registration_ID, registration_time, registration_status, user_ID, course_ID) VALUES
('R0001', '2023-11-01 10:00:00', 'Active', 'U0001', 'C0001'),
('R0002', '2023-11-02 13:50:00', 'Active', 'U0002', 'C0002'),
('R0003', '2023-11-03 09:00:00', 'Active', 'U0003', 'C0003'),
('R0004', '2023-11-04 11:00:00', 'Active', 'U0004', 'C0004'),
('R0005', '2023-11-05 16:30:00', 'Active', 'U0005', 'C0005'),
('R0006', '2023-11-06 17:45:00', 'Active', 'U0006', 'C0006'),
('R0007', '2023-11-07 12:00:00', 'Active', 'U0007', 'C0007'),
('R0008', '2023-11-08 14:15:00', 'Active', 'U0008', 'C0008');

-- Insert into Payment
INSERT INTO Payment (payment_ID, payment_amount, payment_method, payment_status, registration_ID) VALUES
('P0001', 99.99, 'Credit Card', 'Completed', 'R0001'),
('P0002', 149.99, 'PayPal', 'Completed', 'R0002'),
('P0003', 199.99, 'Credit Card', 'Completed', 'R0003'),
('P0004', 129.99, 'Bank Transfer', 'Completed', 'R0004'),
('P0005', 79.99, 'PayPal', 'Completed', 'R0005'),
('P0006', 99.99, 'Credit Card', 'Completed', 'R0006'),
('P0007', 249.99, 'PayPal', 'Completed', 'R0007'),
('P0008', 119.99, 'Bank Transfer', 'Completed', 'R0008');

-- Insert into Review
INSERT INTO Review (review_ID, review_rating, review_comment, review_time, course_ID, user_ID) VALUES
('RV001', 5, 'Excellent course!', '2023-11-01 15:00:00', 'C0001', 'U0001'),
('RV002', 4, 'Very helpful.', '2023-11-02 16:00:00', 'C0008', 'U0008');

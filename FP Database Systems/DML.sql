-- Insert data into Users
INSERT INTO Users (user_ID, user_username, user_email, user_full_name, user_phone, user_registration_date) VALUES
('U001', 'johndoe', 'johndoe@gmail.com', 'John Doe', '081234567890', '2024-01-01'),
('U002', 'janedoe', 'janedoe@gmail.com', 'Jane Doe', '081234567891', '2024-01-02'),
('U003', 'alice', 'alice@gmail.com', 'Alice Smith', '081234567892', '2024-01-03'),
('U004', 'bob', 'bob@gmail.com', 'Bob Johnson', '081234567893', '2024-01-04'),
('U005', 'charlie', 'charlie@gmail.com', 'Charlie Brown', '081234567894', '2024-01-05'),
('U006', 'daniel', 'daniel@gmail.com', 'Daniel Craig', '081234567895', '2024-01-06'),
('U007', 'emma', 'emma@gmail.com', 'Emma Watson', '081234567896', '2024-01-07'),
('U008', 'chris', 'chris@gmail.com', 'Chris Evans', '081234567897', '2024-01-08');

-- Insert data into Courses
INSERT INTO Courses (course_ID, course_title, course_description, course_price, course_category) VALUES
('C001', 'Python Programming', 'Learn Python from scratch.', 300.00, 'Programming'),
('C002', 'Web Development', 'Learn HTML, CSS, and JavaScript.', 250.00, 'Development'),
('C003', 'Data Science', 'Introduction to Data Analysis.', 400.00, 'Data'),
('C004', 'Machine Learning', 'Learn the basics of ML.', 450.00, 'AI'),
('C005', 'UI/UX Design', 'Learn design principles.', 200.00, 'Design'),
('C006', 'Digital Marketing', 'Master digital marketing strategies.', 300.00, 'Marketing'),
('C007', 'Cybersecurity Basics', 'Learn to protect data and systems.', 350.00, 'Security'),
('C008', 'Blockchain Fundamentals', 'Introduction to blockchain technology.', 400.00, 'Technology');

-- Insert data into Tutors
INSERT INTO Tutors (tutor_ID, tutor_full_name, tutor_email, tutor_specialization, course_ID) VALUES
('T001', 'Emma Wilson', 'emma@gmail.com', 'Programming', 'C001'),
('T002', 'Liam Johnson', 'liam@gmail.com', 'Development', 'C002'),
('T003', 'Olivia Brown', 'olivia@gmail.com', 'Data Science', 'C003'),
('T004', 'Noah Davis', 'noah@gmail.com', 'Machine Learning', 'C004'),
('T005', 'Sophia Miller', 'sophia@gmail.com', 'Design', 'C005'),
('T006', 'James Smith', 'james@gmail.com', 'Marketing', 'C006'),
('T007', 'Sophia White', 'sophia.white@gmail.com', 'Security', 'C007'),
('T008', 'William Brown', 'william@gmail.com', 'Blockchain', 'C008');

-- Insert data into Lessons
INSERT INTO Lessons (lesson_ID, lesson_title, lesson_duration_minute, course_ID) VALUES
('L001', 'Introduction to Python', 30, 'C001'),
('L002', 'Functions and Loops', 40, 'C001'),
('L003', 'HTML Basics', 25, 'C002'),
('L004', 'CSS Fundamentals', 35, 'C002'),
('L005', 'Data Wrangling', 45, 'C003'),
('L006', 'SEO Basics', 30, 'C006'),
('L007', 'Introduction to Cybersecurity', 40, 'C007'),
('L008', 'Blockchain Overview', 35, 'C008');

-- Insert data into Quizzes
INSERT INTO Quizzes (quiz_ID, quiz_title, quiz_duration_minute, quiz_pass_grade, lesson_ID) VALUES
('Q001', 'Python Basics Quiz', 15, 70, 'L001'),
('Q002', 'Python Functions Quiz', 20, 70, 'L002'),
('Q003', 'HTML Quiz', 10, 60, 'L003'),
('Q004', 'CSS Quiz', 15, 60, 'L004'),
('Q005', 'Data Wrangling Quiz', 25, 80, 'L005'),
('Q006', 'SEO Quiz', 20, 70, 'L006'),
('Q007', 'Cybersecurity Quiz', 25, 75, 'L007'),
('Q008', 'Blockchain Quiz', 30, 80, 'L008');

-- Insert data into Quiz_Attempts
INSERT INTO Quiz_Attempts (user_ID, quiz_ID, attempt_date, attempt_score, attempt_passed) VALUES
('U001', 'Q001', '2024-11-01 10:00:00', 75, TRUE),
('U002', 'Q002', '2024-11-02 11:00:00', 80, TRUE),
('U003', 'Q003', '2024-11-03 12:00:00', 50, FALSE),
('U004', 'Q004', '2024-11-04 13:00:00', 60, FALSE),
('U005', 'Q005', '2024-11-05 14:00:00', 85, TRUE),
('U006', 'Q006', '2024-11-06 15:00:00', 80, TRUE),
('U007', 'Q007', '2024-11-07 16:00:00', 90, TRUE),
('U008', 'Q008', '2024-11-08 17:00:00', 85, TRUE);

-- Insert data into Registration
INSERT INTO Registration (registration_ID, registration_time, registration_status, user_ID, course_ID) VALUES
('R001', '2024-11-01 10:00:00', 'Active', 'U001', 'C001'),
('R002', '2024-11-02 11:00:00', 'Active', 'U002', 'C002'),
('R003', '2024-11-03 12:00:00', 'Active', 'U003', 'C003'),
('R004', '2024-11-04 13:00:00', 'Inactive', 'U004', 'C004'),
('R005', '2024-11-05 14:00:00', 'Active', 'U005', 'C005'),
('R006', '2024-11-06 15:00:00', 'Active', 'U006', 'C006'),
('R007', '2024-11-07 16:00:00', 'Active', 'U007', 'C007'),
('R008', '2024-11-08 17:00:00', 'Active', 'U008', 'C008');

-- Insert data into Payment
INSERT INTO Payment (payment_ID, payment_amount, payment_method, payment_status, registration_ID) VALUES
('P001', 300.00, 'Credit Card', 'Paid', 'R001'),
('P002', 250.00, 'PayPal', 'Paid', 'R002'),
('P003', 400.00, 'Bank Transfer', 'Pending', 'R003'),
('P004', 450.00, 'Credit Card', 'Paid', 'R004'),
('P005', 200.00, 'PayPal', 'Paid', 'R005'),
('P006', 300.00, 'Credit Card', 'Paid', 'R006'),
('P007', 350.00, 'PayPal', 'Paid', 'R007'),
('P008', 400.00, 'Bank Transfer', 'Paid', 'R008');

-- Insert data into Review
INSERT INTO Review (review_ID, review_rating, review_comment, review_time, course_ID, user_ID) VALUES
('RV1', 5, 'Excellent course!', '2024-11-10 15:00:00', 'C001', 'U001'),
('RV2', 4, NULL, '2024-11-11 16:00:00', 'C002', 'U002'),
('RV3', 3, 'Could be better.', '2024-11-12 17:00:00', 'C003', 'U003');

INSERT INTO Users (user_ID, user_username, user_email, user_full_name, user_phone, user_registration_date) VALUES
('U001', ' user1', 'user1@gmail.com', 'Andi Budi', '08123456789', '2024-12-01'),
('U002', 'user2', 'user2@gmail.com', 'Siti Aminah', '08123456780', '2024-12-01'),
('U003', 'user3', 'user3@gmail.com', 'Budi Santoso', '08123456781', '2024-12-01'),
('U004', 'user4', 'user4@gmail.com', 'Dewi Lestari', '08123456782', '2024-12-01'),
('U005', 'user5', 'user5@gmail.com', 'Eko Prasetyo', '08123456783', '2024-12-01'),
('U006', 'user6', 'user6@gmail.com', 'Fani Nur', '08123456784', '2024-12-01'),
('U007', 'user7', 'user7@gmail.com', 'Gina Rahmawati', '08123456785', '2024-12-01'),
('U008', 'user8', 'user8@gmail.com', 'Hendra Setiawan', '08123456786', '2024-12-01'),
('U009', 'user9', 'user9@gmail.com', 'Ika Sari', '08123456787', '2024-12-01'),
('U010', 'user10', 'user10@gmail.com', 'Joko Susilo', '08123456788', '2024-12-01'),
('U011', 'user11', 'user11@gmail.com', 'Lina Maulida', '08123456789', '2024-12-01'),
('U012', 'user12', 'user12@gmail.com', 'Maya Indah', '08123456790', '2024-12-01'),
('U013', 'user13', 'user13@gmail.com', 'Nina Kurniawati', '08123456791', '2024-12-01'),
('U014', 'user14', 'user14@gmail.com', 'Oka Prabowo', '08123456792', '2024-12-01'),
('U015', 'user15', 'user15@gmail.com', 'Putri Ayu', '08123456793', '2024-12-01'),
('U016', 'user16', 'user16@gmail.com', 'Rudi Hartono', '08123456794', '2024-12-01'),
('U017', 'user17', 'user17@gmail.com', 'Sari Melati', '08123456795', '2024-12-01'),
('U018', 'user18', 'user18@gmail.com', 'Tina Sari', '08123456796', '2024-12-01'),
('U019', 'user19', 'user19@gmail.com', 'Udin Saputra', '08123456797', '2024-12-01'),
('U020', 'user20', 'user20@gmail.com', 'Vina Lestari', '08123456798', '2024-12-01');

INSERT INTO Courses (course_ID, course_title, course_description, course_price, course_category) VALUES
('C001', 'Matematika', 'Pelajaran Matematika untuk SMA', 150000.00, 'SMA'),
('C002', 'Fisika', 'Pelajaran Fisika untuk SMA', 150000.00, 'SMA'),
('C003', 'Kimia', 'Pelajaran Kimia untuk SMA', 150000.00, 'SMA'),
('C004', 'Biologi', 'Pelajaran Biologi untuk SMA', 150000.00, 'SMA'),
('C005', 'Bahasa Inggris', 'Pelajaran Bahasa Inggris untuk SMA', 150000.00, 'SMA'),
('C006', 'Ekonomi', 'Pelajaran Ekonomi untuk SMA', 150000.00, 'SMA'),
('C007', 'Geografi', 'Pelajaran Geografi untuk SMA', 150000.00, 'SMA'),
('C008', 'Sejarah', 'Pelajaran Sejarah untuk SMA', 150000.00, 'SMA'),
('C009', 'Seni Budaya', 'Pelajaran Seni Budaya untuk SMA', 150000.00, 'SMA'),
('C010', 'Pendidikan Kewarganegaraan', 'Pelajaran PKn untuk SMA', 150000.00, 'SMA');

INSERT INTO Tutors (tutor_ID, tutor_full_name, tutor_email, tutor_specialization, course_ID) VALUES
('T001', 'Budi Santoso', 'budi.santoso@gmail.com', 'Mathematics', 'C001'),
('T002', 'Siti Aminah', 'siti.aminah@gmail.com', 'Physics', 'C002'),
('T003', 'Andi Prasetyo', 'andi.prasetyo@gmail.com', 'Chemistry', 'C003'),
('T004', 'Dewi Lestari', 'dewi.lestari@gmail.com', 'Biology', 'C004'),
('T005', 'Rudi Hartono', 'rudi.hartono@gmail.com', 'History', 'C005'),
('T006', 'Nina Sari', 'nina.sari@gmail.com', 'English Language', 'C006'),
('T007', 'Joko Widodo', 'joko.widodo@gmail.com', 'Economics', 'C007'),
('T008', 'Lina Marlina', 'lina.marlina@gmail.com', 'Art', 'C008'),
('T009', 'Eko Prabowo', 'eko.prabowo@gmail.com', 'Geography', 'C009'),
('T010', 'Rina Wulandari', 'rina.wulandari@gmail.com', 'Indonesian Language', 'C010');

INSERT INTO Lessons (lesson_ID, lesson_title, lesson_duration_minute, course_ID) VALUES
('L001', 'Aljabar Dasar', 60, 'C001'),
('L002', 'Geometri', 45, 'C001'),
('L003', 'Hukum Newton', 50, 'C002'),
('L004', 'Energi dan Usaha', 55, 'C002'),
('L005', 'Struktur Atom', 40, 'C003'),
('L006', 'Reaksi Kimia', 50, 'C003'),
('L007', 'Sistem Peredaran Darah', 60, 'C004'),
('L008', 'Ekosistem', 45, 'C004'),
('L009', 'Tenses dalam Bahasa Inggris', 30, 'C005'),
('L010', 'Vocabulary Building', 40, 'C005'),
('L011', 'Teori Permintaan dan Penawaran', 50, 'C006'),
('L012', 'Peta dan Proyeksi', 60, 'C007'),
('L013', 'Peristiwa Sejarah', 45, 'C008'),
('L014', 'Karya Seni', 50, 'C009'),
('L015', 'Hak dan Kewajiban Warga Negara', 40, 'C010');

INSERT INTO Quizzes (quiz_ID, quiz_title, quiz_duration_minute, quiz_pass_grade, lesson_ID) VALUES
('Q001', 'Quiz Aljabar Dasar', 30, 70, 'L001'),
('Q002', 'Quiz Geometri', 30, 70, 'L002'),
('Q003', 'Quiz Hukum Newton', 30, 70, 'L003'),
('Q004', 'Quiz Energi dan Usaha', 30, 70, 'L004'),
('Q005', 'Quiz Struktur Atom', 30, 70, 'L005'),
('Q006', 'Quiz Reaksi Kimia', 30, 70, 'L006'),
('Q007', 'Quiz Sistem Peredaran Darah', 30, 70, 'L007'),
('Q008', 'Quiz Ekosistem', 30, 70, 'L008'),
('Q009', 'Quiz Tenses dalam Bahasa Inggris', 30, 70, 'L009'),
('Q010', 'Quiz Vocabulary Building', 30, 70, 'L010'),
('Q011', 'Quiz Teori Permintaan dan Penawaran', 30, 70, 'L011'),
('Q012', 'Quiz Peta dan Proyeksi', 30, 70, 'L012'),
('Q013', 'Quiz Peristiwa Sejarah', 30, 70, 'L013'),
('Q014', 'Quiz Karya Seni', 30, 70, 'L014'),
('Q015', 'Quiz Hak dan Kewajiban Warga Negara', 30, 70, 'L015');

INSERT INTO Registration (registration_ID, registration_time, registration_status, user_ID, course_ID) VALUES
('R001', '2024-12-01 10:00:00', 'active', 'U001', 'C001'),
('R002', '2024-12-01 10:05:00', 'active', 'U002', 'C002'),
('R003', '2024-12-01 10:10:00', 'active', 'U003', 'C003'),
('R004', '2024-12-01 10:15:00', 'active', 'U004', 'C004'),
('R005', '2024-12-01 10:20:00', 'active', 'U005', 'C005'),
('R006', '2024-12-01 10:25:00', 'active', 'U006', 'C006'),
('R007', '2024-12-01 10:30:00', 'active', 'U007', 'C007'),
('R008', '2024-12-01 10:35:00', 'active', 'U008', 'C008'),
('R009', '2024-12-01 10:40:00', 'active', 'U009', 'C009'),
('R010', '2024-12-01 10:45:00', 'active', 'U010', 'C010'),
('R011', '2024-12-01 10:50:00', 'active', 'U011', 'C001'),
('R012', '2024-12-01 10:55:00', 'active', 'U012', 'C002'),
('R013', '2024-12-01 11:00:00', 'active', 'U013', 'C003'),
('R014', '2024-12-01 11:05:00', 'active', 'U014', 'C004'),
('R015', '2024-12-01 11:10:00', 'active', 'U015', 'C005'),
('R016', '2024-12-01 11:15:00', 'active', 'U016', 'C006'),
('R017', '2024-12-01 11:20:00', 'active', 'U017', 'C007'),
('R018', '2024-12-01 11:25:00', 'active', 'U018', 'C008'),
('R019', '2024-12-01 11:30:00', 'active', 'U019', 'C009'),
('R020', '2024-12-01 11:35:00', 'active', 'U020', 'C010');

INSERT INTO Quiz_Attempts (user_ID, quiz_ID, attempt_date, attempt_score, attempt_passed) VALUES
('U001', 'Q001', '2024-12-02 09:00:00', 80, TRUE),
('U001', 'Q002', '2024-12-02 09:30:00', 60, FALSE),
('U002', 'Q003', '2024-12-02 09:15:00', 75, TRUE),
('U002', 'Q004', '2024-12-02 09:45:00', 50, FALSE),
('U003', 'Q005', '2024-12-02 09:20:00', 90, TRUE),
('U003', 'Q006', '2024-12-02 09:50:00', 70, TRUE),
('U004', 'Q007', '2024-12-02 09:25:00', 85, TRUE),
('U004', 'Q008', '2024-12-02 10:00:00', 65, FALSE),
('U005', 'Q009', '2024-12-02 09:35:00', 95, TRUE),
('U005', 'Q010', '2024-12-02 10:05:00', 80, TRUE),
('U006', 'Q011', '2024-12-02 09:40:00', 70, TRUE),
('U007', 'Q012', '2024-12-02 09:55:00', 60, FALSE),
('U008', 'Q013', '2024-12-02 10:10:00', 75, TRUE),
('U008', 'Q014', '2024-12-02 10:20:00', 55, FALSE),
('U009', 'Q015', '2024-12-02 10:30:00', 80, TRUE),
('U010', 'Q001', '2024-12-02 10:40:00', 65, FALSE),
('U011', 'Q002', '2024-12-02 10:50:00', 90, TRUE),
('U012', 'Q003', '2024-12-02 11:00:00', 70, TRUE),
('U013', 'Q004', '2024-12-02 11:10:00', 85, TRUE),
('U014', 'Q005', '2024-12-02 11:20:00', 60, FALSE),
('U015', 'Q006', '2024-12-02 11:30:00', 95, TRUE),
('U016', 'Q007', '2024-12-02 11:40:00', 80, TRUE),
('U017', 'Q008', '2024-12-02 11:50:00', 75, TRUE),
('U018', 'Q009', '2024-12-02 12:00:00', 65, FALSE),
('U019', 'Q010', '2024-12-02 12:10:00', 90, TRUE),
('U020', 'Q011', '2024-12-02 12:20:00', 70, TRUE);

INSERT INTO Payment (payment_ID, payment_amount, payment_method, payment_status, registration_ID) VALUES
('P001', 150000.00, 'Transfer Bank', 'completed', 'R001'),
('P002', 150000.00, 'Kartu Kredit', 'completed', 'R002'),
('P003', 150000.00, 'Transfer Bank', 'completed', 'R003'),
('P004', 150000.00, 'Kartu Kredit', 'completed', 'R004'),
('P005', 150000.00, 'Transfer Bank', 'completed', 'R005'),
('P006', 150000.00, 'Kartu Kredit', 'completed', 'R006'),
('P007', 150000.00, 'Transfer Bank', 'completed', 'R007'),
('P008', 150000.00, 'Kartu Kredit', 'completed', 'R008'),
('P009', 150000.00, 'Transfer Bank', 'completed', 'R009'),
('P010', 150000.00, 'Kartu Kredit', 'completed', 'R010'),
('P011', 150000.00, 'Transfer Bank', 'completed', 'R011'),
('P012', 150000.00, 'Kartu Kredit', 'completed', 'R012'),
('P013', 150000.00, 'Transfer Bank', 'completed', 'R013'),
('P014', 150000.00, 'Kartu Kredit', 'completed', 'R014'),
('P015', 150000.00, 'Transfer Bank', 'completed', 'R015'),
('P016', 150000.00, 'Kartu Kredit', 'completed', 'R016'),
('P017', 150000.00, 'Transfer Bank', 'completed', 'R017'),
('P018', 150000.00, 'Kartu Kredit', 'completed', 'R018'),
('P019', 150000.00, 'Transfer Bank', 'completed', 'R019'),
('P020', 150000.00, 'Kartu Kredit', 'completed', 'R020');

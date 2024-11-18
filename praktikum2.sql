create database library;
use library;

-- number 1
create table members (
    id char(5) primary key,
    name varchar(50) not null,
    email varchar(50) not null,
    gender char(1) not null,
    addres varchar(100) not null
);

create table genres (
    id char(5) primary key,
    genre_name varchar(50) not null,
    description varchar(255) not null
);

create table positions (
    id char(5) primary key,
    position_name varchar(50) not null,
    admin_acces boolean not null
);

create table employees (
    id char(5) primary key,
    name varchar(50) not null,
    email varchar(50) not null,
    gender char(1) not null,
    addres varchar(100) not null,
    position_id char(5) not null,
    foreign key (position_id) references positions(id) on delete cascade on update cascade
);

create table phone_numbers (
    phone_number varchar(13) primary key,
    member_id char(5) not null,
    employee_id char(5) not null,
    foreign key (member_id) references members(id) on delete cascade on update cascade,
    foreign key (employee_id) references employees(id) on delete cascade on update cascade
);

create table borrows (
    id char(5) primary key,
    borrow_date date not null,
    return_date date,
    due_date date not null,
    fine decimal(10,2),
    member_id char(5) not null,
    employee_id char(5) not null,
    foreign key (member_id) references members(id) on delete cascade on update cascade,
    foreign key (employee_id) references employees(id) on delete cascade on update cascade
);

create table books (
    id char(5) primary key,
    isbn char(13) not null,
    title varchar(100) not null,
    author_name varchar(50) not null,
    year_published year not null,
    synopsis varchar(255) not null,
    stock int not null,
    genre_id char(5) not null,
    foreign key (genre_id) references genres(id) on delete cascade on update cascade
);

create table books_borrows (
    book_id char(5),
    borrow_id char(5),
    primary key (book_id, borrow_id),
    foreign key (book_id) references books(id) on delete cascade on update cascade,
    foreign key (borrow_id) references borrows(id) on delete cascade on update cascade
);

-- number 2
create table authors (
    id char(5) primary key,
    author_name varchar(50) not null,
    nationality varchar(30) not null,
    birthdate date not null
);

create table publisher (
    id char(5) primary key,
    name varchar(50) not null,
    address varchar(100) not null,
    country varchar(30) not null,
    email varchar(50) not null
);

alter table books add author_id char(5);
alter table books add publisher_id char(5);

alter table books
add foreign key (author_id) references authors(id) on delete cascade on update cascade,
add foreign key (publisher_id) references publisher(id) on delete cascade on update cascade;



-- number 3
ALTER TABLE phone_numbers DROP FOREIGN KEY phone_numbers_ibfk_1;
ALTER TABLE borrows DROP FOREIGN KEY borrows_ibfk_1;

ALTER TABLE members DROP PRIMARY KEY;
ALTER TABLE members CHANGE COLUMN id NIK CHAR(20) PRIMARY KEY;

ALTER TABLE phone_numbers MODIFY member_id CHAR(20);
ALTER TABLE borrows MODIFY member_id CHAR(20);

ALTER TABLE phone_numbers ADD CONSTRAINT phone_numbers_ibfk_1 FOREIGN KEY (member_id) REFERENCES members(NIK) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE borrows ADD CONSTRAINT borrows_ibfk_1 FOREIGN KEY (member_id) REFERENCES members(NIK) ON DELETE CASCADE ON UPDATE CASCADE;


-- number 4
DROP TABLE phone_numbers;

ALTER TABLE members ADD COLUMN phone_number VARCHAR(13);

ALTER TABLE employees ADD COLUMN phone_number VARCHAR(13);

-- number 5
insert into members values
('3326162409040002', 'Citra Kirana', 'citra@gmail.com', 'P', 'Jl. Cinta No.45', '088374628921'),
('3525017006950028', 'Jasmine Neroli', 'jasmine@gmail.com', 'P', 'Jl. Melati No.9', '083285716164'),
('3525017006520020', 'Nico Parto', 'nico@gmail.com', 'L', 'Jl. Kenanga No.33', '089675329117'),
('3305040901072053', 'Teddy Widodo', 'teddy@gmail.com', 'L', 'Jl. Anggrek No.17', '085782306818'),
('3326161509700004', 'Beni Soeharti', 'beni@gmail.com', 'L', 'Jl. Raya No.56', '0812345678919');

insert into genres values
('GR001', 'History', 'Books that examine specific events or eras, providing insight into the past and its impact on the present. Usually accompanied by in-depth historical data, analysis and narrative.'),
('GR002', 'Fiction', 'Imaginative stories created by writers, not based on real facts. This genre includes subgenres such as romance, fantasy, and adventure, with a focus on characters and storyline.'),
('GR003', 'Self-Development', 'Books that provide guidance to improve the quality of life or skills of the reader. Presents practical advice on topics such as motivation, time management, and personal problem solving.'),
('GR004', 'Biography', "Tells a person's life in detail from birth to the end of his life or now. Compiled based on facts, this story describes the character's experiences, struggles and achievements."),
('GR005', 'Reference', 'Books that function as complete reference sources, such as dictionaries, encyclopedias, or handbooks. Contains data, definitions or concepts that can be accessed as needed, without having to be read sequentially.');

insert into positions values
('PS001','Librarian', True),
('PS002', 'Cleaning', False),
('PS003', 'Security', False);

insert into employees values
('EM001', 'Andi Gading', 'andi@gmail.com', 'P', 'Jl. Merdeka No.10', 'PS001', '081628492610'),
('EM002', 'Budi Sitombing', 'budi@gmail.com', 'L', 'Jl. Sukun Raya No.25', 'PS003', '085864927581'),
('EM003', 'Jennifer Tina', 'tina@gmail.com', 'P', 'Jl. Pahlawan No.5', 'PS001', '089603471812'),
('EM004', 'Lili Sari', 'lili@gmail.com', 'P', 'Jl. Cendana No.8', 'PS002', '088385793136'),
('EM005', 'Alexander Agus', 'agus@gmail.com', 'L', 'Jl. Bunga No.12', 'PS001', '088273659814');

insert into borrows values 
('BR001', '2024-5-6', '2024-5-20', '2024-5-20', NULL, '3326162409040002', 'EM004'),
('BR002', '2024-7-14', '2024-7-29', '2024-7-28', 5000.00, '3525017006950028', 'EM001'),
('BR003', '2024-9-22', '2024-10-8', '2024-10-6', 10000.00, '3525017006520020', 'EM003'),
('BR004', '2024-10-3', '2024-10-20', '2024-10-17', 15000.00, '3305040901072053', 'EM002'),
('BR005', '2024-11-2', NULL, '2024-11-16', NULL, '3326161509700004', 'EM005');

insert into authors values
('AU001', 'Michael Brown', 'American', '1990-5-30'),
('AU002', 'Andi Saputra', 'Indonesian', '1998-10-2'),
('AU003', 'Yuki Nakamura', 'Japanese', '1973-1-22'),
('AU004', 'Kim Min Joon', 'South Korean', '1982-4-18'),
('AU005', 'James Williams', 'British', '1962-12-4');

insert into publisher values
('PB001', 'Silver Oak Publishing', '1234 Elm Street', 'United States', 'silveroak1234@gmail.com'),
('PB002', 'Blue Sky Books', '9012 Pine Road', 'Jepang', 'bluesky9012@gmail.com'),
('PB003', 'Green Leaf Press', '5678 Maple Avenue', 'Indonesia', 'greenleaf5678@gmail.com'),
('PB004', 'Golden Dragon Publishing', '3456 Bamboo Lane', 'China', 'goldendragon3456@gmail.com'),
('PB005', 'Red River Press', '7890 Cherry Blossom Drive', 'France', 'redriver7890@gmail.com');

insert into books values
('BK001', '9780123456789', 'Jejak Peradaban: Kisah Perjalanan Sejarah Indonesia', 'Andi Saputra', '2010', "Delving into Indonesian history, this book presents important events and influential figures who shaped the nation's civilization, bringing readers to understand the roots of Indonesian culture and identity.", 5, 'GR001', 'AU002', 'PB003'),
('BK002', '9781234567890', 'Small Steps, Big Changes: Building Positive Habits', 'Yuki Nakamura', '2005', "Discover the power of small habits that have a big impact. This book provides practical strategies for building positive habits that can change lives and improve overall well-being.", 3, 'GR003', 'AU003', 'PB002'),
('BK003', '9782345678901', 'Complete Dictionary of Information Technology Terms', 'Michael Brown', '2020', "A complete guide to information technology terms, this book explains basic concepts to complex technical terms, making it a useful reference resource for students and professionals.", 7, 'GR005', 'AU001', 'PB001'),
('BK004', '9783456789012', 'Jejak Peradaban: Breaking Barriers: The Inspiring Story of Nelson Mandela', 'James Williams', '2018', "The extraordinary story of Nelson Mandela, a freedom fighter who overcame obstacles to fight for equality and justice. An inspiring journey of courage, sacrifice, and hope.", 2, 'GR004', 'AU005', 'PB001'),
('BK005', '9784567890123', 'Light at the End of the Road: A Story of Hope', 'Kim Min Joon', '2024', "In a journey full of challenges, a character finds the strength of hope and friendship. This novel invites readers to reflect on the meaning of life and the importance of believing in a better future.", 4, 'GR002', 'AU004', 'PB004');

insert into books_borrows values
('BK001', 'BR001'),
('BK003', 'BR002'),
('BK001', 'BR002'),
('BK004', 'BR003'),
('BK005', 'BR004'),
('BK002', 'BR005');


-- number 6
ALTER TABLE books_borrows DROP FOREIGN KEY books_borrows_ibfk_2;

delete from borrows;
delete from books_borrows;

ALTER TABLE books_borrows MODIFY borrow_id INT;
ALTER TABLE borrows MODIFY id INT AUTO_INCREMENT;

ALTER TABLE books_borrows 
ADD FOREIGN KEY (borrow_id) REFERENCES borrows(id) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO borrows (borrow_date, return_date, due_date, fine, member_id, employee_id) VALUES
('2024-05-06', '2024-05-20', '2024-05-20', NULL, '3326162409040002', 'EM004'),
('2024-07-14', '2024-07-29', '2024-07-28', 5000.00, '3525017006950028', 'EM001'),
('2024-09-22', '2024-10-08', '2024-10-06', 10000.00, '3525017006520020', 'EM003'),
('2024-10-03', '2024-10-20', '2024-10-17', 15000.00, '3305040901072053', 'EM002'),
('2024-11-02', NULL, '2024-11-16', NULL, '3326161509700004', 'EM005');

INSERT INTO books_borrows (book_id, borrow_id) VALUES
('BK001', 1),
('BK003', 2),
('BK001', 2),
('BK004', 3),
('BK005', 4),
('BK002', 5);


-- number 7
UPDATE borrows 
SET return_date = CURRENT_DATE 
WHERE member_id = '3326161509700004';


-- number 8
UPDATE borrows 
SET fine = NULL 
WHERE member_id IN ('3525017006520020', '3305040901072053');


-- number 9
INSERT INTO borrows (borrow_date, return_date, due_date, fine, member_id, employee_id)
SELECT 
    '2024-11-03', 
    NULL, 
    DATE_ADD('2024-11-03', INTERVAL 14 DAY), 
    NULL, 
    m.NIK,
    e.id
FROM members m, employees e
WHERE m.name = 'Beni Soeharti' AND e.name = 'Alexander Agus';

INSERT INTO books_borrows (book_id, borrow_id)
SELECT b.id, LAST_INSERT_ID()
FROM books b
WHERE b.title = 'Complete Dictionary of Information Technology Terms';

UPDATE books 
SET stock = stock - 1 
WHERE title = 'Complete Dictionary of Information Technology Terms';


-- number 10
INSERT INTO employees (id, name, email, gender, addres, phone_number, position_id)
VALUES (
    'EM006',
    'Aspas Gata',
    'aspasgata@gmail.com',
    'L',
    'Jl. Badut No.62',
    '0895323390308',
    'PS001'
);


-- number 11
UPDATE employees
SET name = 'Andi Haki',
    gender = 'L',
    phone_number = '081628492611'
WHERE name = 'Andi Gading';


-- number 12
DELETE FROM members WHERE name = 'Jasmine Neroli';
DELETE FROM employees WHERE name = 'Aspas Gata';

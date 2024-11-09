CREATE DATABASE library;

USE library;

-- Author table
CREATE TABLE Author (
    Author_ID CHAR(6) PRIMARY KEY,
    Author_Name VARCHAR(100),
    Author_Nationality VARCHAR(100),
    Author_BirthDate DATE
);

-- Book table
CREATE TABLE Book (
    Book_ID CHAR(6) PRIMARY KEY,
    Book_Title VARCHAR(50),
    Book_Author CHAR(6),
    Book_Genre VARCHAR(20),
    Book_Release DATE,
    Book_Shelf_ID CHAR(6)
);

-- Shelf table
CREATE TABLE Shelf (
    Shelf_ID CHAR(6) PRIMARY KEY,
    Shelf_Capacity INT,
    Shelf_Floor INT
);

-- Employee table
CREATE TABLE Employee (
    Employee_ID CHAR(16) PRIMARY KEY,
    Employee_Name VARCHAR(100),
    Employee_Email VARCHAR(100),
    Employee_Phone VARCHAR(15)
);

-- Member table
CREATE TABLE Member (
    Member_ID CHAR(7) PRIMARY KEY,
    Member_Name VARCHAR(100),
    Member_Address VARCHAR(100),
    Member_PhoneNum VARCHAR(15),
    Member_Email VARCHAR(100),
    Member_Creation_Date TIMESTAMP,
    Member_Expired_Date TIMESTAMP
);

-- Author_Book table
CREATE TABLE Author_Book (
    Author_Author_ID CHAR(6),
    Book_Book_ID CHAR(6),
    PRIMARY KEY (Author_Author_ID, Book_Book_ID)
);

-- Loan table
CREATE TABLE Loan (
    Loan_ID CHAR(6) PRIMARY KEY,
    Loan_Date DATE,
    Loan_Return_Date DATE,
    Loan_Due_Date DATE,
    Loan_Fine INT,
    Member_Member_ID CHAR(7),
    Book_Book_ID CHAR(6)
);

-- Publisher table
CREATE TABLE Publisher (
    Publisher_ID CHAR(6) PRIMARY KEY,
    Publisher_Name VARCHAR(100),
    Publisher_Addres VARCHAR(100),
    Publisher_Country VARCHAR(100),
    Publisher_Email VARCHAR(100)
);


-- Add Foreign Key
ALTER TABLE Book
ADD FOREIGN KEY (Book_Shelf_ID) REFERENCES Shelf(Shelf_ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Author_Book
ADD FOREIGN KEY (Author_Author_ID) REFERENCES Author(Author_ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Author_Book
ADD FOREIGN KEY (Book_Book_ID) REFERENCES Book(Book_ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Loan
ADD FOREIGN KEY (Member_Member_ID) REFERENCES Member(Member_ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Loan
ADD FOREIGN KEY (Book_Book_ID) REFERENCES Book(Book_ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

INSERT INTO Author (Author_ID, Author_Name, Author_Nationality, Author_BirthDate) VALUES
('AU001', 'John Doe', 'American', '1970-05-12'),
('AU002', 'Jane Smith', 'British', '1985-07-24'),
('AU003', 'Robert Johnson', 'American', '1962-10-02'),
('AU004', 'Emily Zhang', 'Chinese', '1980-03-17'),
('AU005', 'Alice Nguyen', 'Vietnamese', '1992-11-29');

INSERT INTO Employee (Employee_ID, Employee_Name, Employee_Email, Employee_Phone) VALUES
('FT001', 'Sarah Connor', 'sarah@library.org', '1234567890'),
('FT002', 'Tom Watson', 'tom@library.org', '9876543210'),
('PT003', 'Nancy Drew', 'nancy@gmail.com', '5678901234'),
('PT004', 'James Bond', 'james@library.org', '4561237890'),
('FT005', 'Laura Croft', 'laura@library.org', '6789012345');

INSERT INTO Member (Member_ID, Member_Name, Member_Email, Member_Creation_Date, Member_Expired_Date) VALUES
('M001', 'Alice Peterson', 'alice@gmail.com', '2022-02-15', '2023-02-15'),
('M002', 'Bob Smith', 'bob@library.org', '2023-01-05', '2024-01-05'),
('M003', 'Charlie Brown', 'charlie@gmail.com', '2023-03-20', '2024-03-20'),
('M004', 'Diane Lewis', 'diane@library.org', '2023-11-01', '2024-11-01'),
('M005', 'Eve Johnson', 'eve@gmail.com', '2021-10-15', '2022-10-15');

INSERT INTO Shelf (Shelf_ID, Shelf_Capacity, Shelf_Floor) VALUES
('SH001', 15, 1),
('SH002', 5, 1),
('SH003', 8, 2),
('SH004', 10, 2),
('SH005', 20, 3);

INSERT INTO Book (Book_ID, Book_Title, Book_Author, Book_Genre, Book_Release, Book_Shelf_ID) VALUES
('BK001', 'The Great Adventure', 'AU001', 'Fiction', '2019-04-10', 'SH001'),
('BK002', 'The World of Science', 'AU002', 'Science', '2020-06-15', 'SH002'),
('BK003', 'American History Explained', 'AU003', 'History', '2018-02-20', 'SH003'),
('BK004', 'Understanding the Cosmos', 'AU004', 'Science', '2021-09-11', 'SH004'),
('BK005', 'Mystery of the Old Castle', 'AU005', 'Fiction', '2022-01-05', 'SH005');

INSERT INTO Loan (Loan_ID, Loan_Date, Loan_Return_Date, Loan_Due_Date, Loan_Fine, Member_Member_ID, Book_Book_ID) VALUES
('L001', '2023-01-10', '2023-01-20', '2023-01-15', 5000, 'M001', 'BK001'),
('L002', '2023-05-12', '2023-05-22', '2023-05-15', 20000, 'M002', 'BK002'),
('L003', '2023-08-15', '2023-08-25', '2023-08-18', 10000, 'M003', 'BK003'),
('L004', '2023-11-01', '2023-11-05', '2023-11-03', 15000, 'M004', 'BK004'),
('L005', '2023-12-10', NULL, '2023-12-17', NULL, 'M005', 'BK005');

INSERT INTO Author_Book (Author_Author_ID, Book_Book_ID) VALUES
('AU001', 'BK001'),
('AU002', 'BK002'),
('AU003', 'BK003'),
('AU004', 'BK004'),
('AU005', 'BK005');
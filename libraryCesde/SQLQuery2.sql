-- Crear la base de datos
CREATE DATABASE libraryCesde;
GO
 
-- Usar la base de datos
USE libraryCesde;
GO

-- Crear la tabla users
CREATE TABLE users (
  doc_id INT PRIMARY KEY,
  doc_type VARCHAR(55) NOT NULL,
  name VARCHAR(55) NOT NULL,
  lastname VARCHAR(55) NOT NULL,
  email VARCHAR(70) NOT NULL
);
GO

-- Crear la tabla school
CREATE TABLE school (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(30)
);
GO

-- Crear la tabla program
CREATE TABLE program (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(30),
  school_id INT,
  CONSTRAINT FK_Program_School FOREIGN KEY (school_id) REFERENCES school(id)
);
GO

-- Crear la tabla student
CREATE TABLE student (
  id INT IDENTITY(1,1) PRIMARY KEY,
  school_id INT,
  program_id INT,
  user_id INT,
  CONSTRAINT FK_Student_School FOREIGN KEY (school_id) REFERENCES school(id),
  CONSTRAINT FK_Student_Program FOREIGN KEY (program_id) REFERENCES program(id),
  CONSTRAINT FK_Student_User FOREIGN KEY (user_id) REFERENCES users(doc_id)
);
GO

-- Crear la tabla teacher
CREATE TABLE teacher (
  id INT PRIMARY KEY,
  active BIT,
  school_id INT,
  id_user INT,
  CONSTRAINT FK_Teacher_School FOREIGN KEY (school_id) REFERENCES school(id),
  CONSTRAINT FK_Teacher_User FOREIGN KEY (id_user) REFERENCES users(doc_id)
);
GO

-- Crear la tabla author
CREATE TABLE author (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(30)
);
GO

-- Crear la tabla editorial
CREATE TABLE editorial (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(30)
);
GO

-- Crear la tabla category
CREATE TABLE category (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(30)
);
GO

-- Crear la tabla library
CREATE TABLE library (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(30)
);
GO

-- Crear la tabla book
CREATE TABLE book (
  isbn BIGINT PRIMARY KEY,
  name VARCHAR(50),
  page_number INT,
  published_year DATE,
  author_id INT,
  editorial_id INT,
  category_id INT,
  library_id INT,
  CONSTRAINT FK_Book_Author FOREIGN KEY (author_id) REFERENCES author(id),
  CONSTRAINT FK_Book_Editorial FOREIGN KEY (editorial_id) REFERENCES editorial(id),
  CONSTRAINT FK_Book_Category FOREIGN KEY (category_id) REFERENCES category(id),
  CONSTRAINT FK_Book_Library FOREIGN KEY (library_id) REFERENCES library(id)
);
GO

-- Crear la tabla loan
CREATE TABLE loan (
  id INT IDENTITY(1,1) PRIMARY KEY,
  took DATE,
  return_date DATE,
  user_id INT,
  book_isbn BIGINT,
  library_id INT,
  CONSTRAINT FK_Loan_User FOREIGN KEY (user_id) REFERENCES users(doc_id),
  CONSTRAINT FK_Loan_Book FOREIGN KEY (book_isbn) REFERENCES book(isbn),
  CONSTRAINT FK_Loan_Library FOREIGN KEY (library_id) REFERENCES library(id)
);
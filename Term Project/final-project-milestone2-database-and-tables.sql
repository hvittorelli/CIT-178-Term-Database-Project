CREATE DATABASE BookDB;
GO

USE BookDB;
CREATE TABLE BookInventory(
	BookID int NOT NULL,
	BookTitle varchar(200) NOT NULL,
	Pages int,
	PublishedDate date,
	GenreID varchar(10) NOT NULL,
	PublisherID int NOT NULL,
	AuthorID int NOT NULL,
	BookFormat varchar(10) NOT NULL,
	PRIMARY KEY(BookID)
);
GO

CREATE TABLE Genre(
	GenreID varchar(10) NOT NULL,
	Genre varchar(200) NOT NULL
	PRIMARY KEY(GenreID)
);
GO

CREATE TABLE Author(
	AuthorID int NOT NULL,
	FirstName varchar(60) NOT NULL,
	LastName varchar(60) NOT NULL,
	PRIMARY KEY(AuthorID)
);
GO

CREATE TABLE Publisher(
	PublisherID int NOT NULL,
	PublisherName varchar(200) NOT NULL
	PRIMARY KEY(PublisherID)
); 
GO

CREATE TABLE BookFormat(
	BookFormatID varchar(10) NOT NULL,
	FormatType varchar(60) NOT NULL,
	PRIMARY KEY(BookFormatID)
);
GO

CREATE TABLE Borrower(
	BorrowerID int NOT NULL,
	FName varchar(60) NOT NULL,
	LName varchar(60) NOT NULL,
	PRIMARY KEY(BorrowerID)
); 
GO

CREATE TABLE Loaned(
	LoanID int NOT NULL,
	LoanDate date, 
	Active_NotActive bit,
	BorrowerID int NOT NULL,
	BookID int NOT NULL,
	PRIMARY KEY(LoanID)
);
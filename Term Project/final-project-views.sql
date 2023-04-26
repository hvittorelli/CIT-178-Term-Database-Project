/* Final Project Views 

--View 1 (Updatable)
USE BookDB;
GO
CREATE VIEW VI_BookPublisher
AS
SELECT BookTitle, PublishedDate, PublisherName
FROM BookInventory
JOIN Publisher ON BookInventory.PublisherID = Publisher.PublisherID;

--View 2
USE BookDB;
GO
CREATE VIEW VI_HarryPotter
AS
SELECT * FROM BookInventory
WHERE AuthorID = 3;



--View 3 (SchemaBinding)
USE BookDB;
GO
CREATE VIEW [dbo].[VI_LoanedBooks]
WITH SCHEMABINDING
AS
SELECT LoanID, LoanDate, Active_NotActive, BorrowerID, BookID
FROM dbo.Loaned;


--View 4
USE BookDB;
GO
CREATE VIEW VI_LoanedBorrowers
AS
SELECT LoanDate, FName, LName, Active_NotActive
FROM Loaned
JOIN Borrower ON Loaned.BorrowerID = Borrower.BorrowerID
WITH CHECK OPTION;

USE BookDB;
GO
INSERT INTO VI_HarryPotter (BookID, BookTitle, GenreID, PublisherID, AuthorID, BookFormat)
VALUES (11, 'Harry Potter and the Prisoner of Azkaban', 'FAN', 8, 3, 'HRD');
GO 
SELECT * FROM BookInventory; */


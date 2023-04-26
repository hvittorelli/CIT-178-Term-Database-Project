/* Final Project Procedures

USE BookDB;
GO
CREATE PROC spActiveBooksOnLoan
AS
SELECT BookTitle, LoanDate
FROM BookInventory JOIN Loaned ON BookInventory.BookID = Loaned.BookID
WHERE Active_NotActive = 1
ORDER BY BookTitle 

EXEC spActiveBooksOnLoan 

USE BookDB;
GO
CREATE PROC spAuthorSearch
@AuthFName varchar(60),
@AuthLName varchar(60)
AS
SET NOCOUNT ON;
SELECT BookTitle, BookFormat, FirstName, LastName
FROM Author JOIN BookInventory ON Author.AuthorID = BookInventory.AuthorID
WHERE FirstName = @AuthFName AND LastName = @AuthLName; 

EXEC spAuthorSearch @AuthFName = 'J.K.', @AuthLName = 'Rowling';

USE BookDB;
GO
CREATE PROC spGenreSearch
@Genre varchar(200),
@BookTitle varchar(200) OUTPUT
AS
BEGIN
SELECT @BookTitle = BookTitle
FROM Genre JOIN BookInventory ON Genre.GenreID = BookInventory.GenreID
WHERE Genre = @Genre
END 

DECLARE @BookTitle varchar(200),
@Genre varchar(200)
EXEC spGenreSearch 'Nonfiction', @BookTitle OUTPUT
SELECT @BookTitle AS 'Book Title';

USE BookDB;
GO
CREATE PROC spLoanedCount
@DateVar date = NULL
AS
IF @DateVar IS NULL
	SELECT @DateVar = MIN(LoanDate) FROM Loaned;

DECLARE @LoanedCount int;

SELECT @LoanedCount = COUNT(BookID)
FROM Loaned
WHERE (LoanDate >= @DateVar) AND Active_NotActive = 1;

RETURN @LoanedCount

DECLARE @LoanedCount int;
EXEC @LoanedCount = spLoanedCount '2023-01-02'
PRINT 'Book Count: ' + CONVERT(varchar, @LoanedCount)

Final Project User Defined Functions


USE BookDB;
GO
CREATE FUNCTION fnTitleID (@BookTitle varchar(200))
	RETURNS int
BEGIN
	RETURN (SELECT BookID FROM BookInventory WHERE BookTitle = @BookTitle);
END;

SELECT BookID, BookTitle, GenreID
FROM BookInventory
WHERE BookID = dbo.fnTitleID('Living Untethered');


 USE BookDB;
 GO
 CREATE FUNCTION fnGenres
	(@GenreID varchar(10))
	RETURNS TABLE
RETURN
	(SELECT * FROM BookInventory WHERE @GenreID = BookInventory.GenreID);

 SELECT * FROM dbo.fnGenres('FAN');
 SELECT * FROM dbo.fnGenres('NFIC');
 
 
Final Project Triggers

USE BookDB;
GO
CREATE TABLE LoanedLogs(BookID int, status varchar(30));

 USE BookDB;
 GO
 CREATE TRIGGER Loaned_DELETE ON Loaned
	AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @BookID int
	SELECT @BookID = DELETED.BookID
	FROM DELETED

	INSERT INTO LoanedLogs
	VALUES(@BookID, 'Deleted')
END 

DELETE FROM Loaned WHERE BookID = 2;

SELECT * FROM LoanedLogs; 

 USE BookDB;
 GO
 CREATE TRIGGER Loaned_INSERT ON Loaned
	AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @BookID int
	SELECT @BookID = INSERTED.BookID
	FROM INSERTED

	INSERT INTO LoanedLogs
	VALUES(@BookID, 'Loaned')
END 

INSERT INTO Loaned(LoanID, LoanDate, Active_NotActive, BorrowerID, BookID) 
VALUES (6, '2023-04-20', 1, 5, 6);

SELECT * FROM LoanedLogs; 

USE BookDB;
GO
CREATE TRIGGER Loaned_UPDATED ON Loaned
	AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @BookID int
	DECLARE @Action varchar(30)
	SELECT @BookID = INSERTED.BookID
	FROM INSERTED

	IF UPDATE(Active_NotActive) SET @Action = 'Returned'

	IF UPDATE(BorrowerID) SET @Action = 'Borrower Traded'

	INSERT INTO LoanedLogs
	VALUES(@BookID, @Action)
END

UPDATE Loaned SET Active_NotActive = 1 WHERE LoanID = 3;
UPDATE Loaned SET BorrowerID = 3 WHERE LoanID = 2;

SELECT * FROM LoanedLogs; */
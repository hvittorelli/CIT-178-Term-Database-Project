/* USE BookDB;

SELECT AVG(Pages) AS [Average Number of Pages]
FROM BookInventory; 

USE BookDB;

SELECT Publisher.PublisherName, COUNT(BookInventory.PublisherID) AS [Books by Publisher]
FROM BookInventory JOIN Publisher ON BookInventory.PublisherID = Publisher.PublisherID
GROUP BY Publisher.PublisherName

USE BookDB;

SELECT MAX(Pages) AS [Most Pages]
FROM BookInventory;

USE BookDB;

SELECT MAX(FName) AS [Fist Borrower], MIN(FName) AS [Last Borrower], COUNT(BorrowerID) AS [Total Amount of Borrowers]
FROM Borrower */



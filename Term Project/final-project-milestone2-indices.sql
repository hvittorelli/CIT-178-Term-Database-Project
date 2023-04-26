USE BookDB;
GO

CREATE INDEX idx_Genre ON BookInventory(GenreID);
GO

CREATE INDEX idx_Publisher ON BookInventory(PublisherID);
GO

CREATE INDEX idx_Author ON BookInventory(AuthorID);
GO

CREATE INDEX idx_BookFormat ON BookInventory(BookFormat);
GO

CREATE INDEX idx_Borrower ON Loaned(BorrowerID);
GO

CREATE INDEX idx_BookID ON Loaned(BookID);
GO

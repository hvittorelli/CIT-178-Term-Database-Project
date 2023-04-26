USE [BookDB]
GO
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (N'FAN', N'Fantasy')
GO
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (N'FIC', N'Fiction')
GO
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (N'HFIC', N'Historical Fiction')
GO
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (N'MYS', N'Mystery')
GO
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (N'NFIC', N'Nonfiction')
GO
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (N'SFH', N'Self Help')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName]) VALUES (1, N'Michael', N'Singer')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName]) VALUES (2, N'Ekhart', N'Tolle')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName]) VALUES (3, N'J.K.', N'Rowling')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName]) VALUES (4, N'Madeline', N'Miller')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName]) VALUES (5, N'Sue', N'Monk Kidd')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName]) VALUES (6, N'Brene', N'Brown')
GO
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName]) VALUES (1, N'New Harbinger Publications')
GO
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName]) VALUES (2, N'New World Library')
GO
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName]) VALUES (3, N'Arthur A. Levine Books')
GO
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName]) VALUES (4, N'Little, Brown and Company')
GO
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName]) VALUES (5, N'Viking')
GO
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName]) VALUES (6, N'Hazelden Publishing')
GO
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName]) VALUES (7, N'Avery')
GO
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName]) VALUES (8, N'Scholastic, Inc.')
GO
INSERT [dbo].[BookFormat] ([BookFormatID], [FormatType]) VALUES (N'AUD', N'Audio')
GO
INSERT [dbo].[BookFormat] ([BookFormatID], [FormatType]) VALUES (N'DIG', N'Digital')
GO
INSERT [dbo].[BookFormat] ([BookFormatID], [FormatType]) VALUES (N'HRD', N'Hardcover')
GO
INSERT [dbo].[BookFormat] ([BookFormatID], [FormatType]) VALUES (N'MAU', N'Manuscript')
GO
INSERT [dbo].[BookFormat] ([BookFormatID], [FormatType]) VALUES (N'PPR', N'Paperback')
GO
INSERT [dbo].[BookInventory] ([BookID], [BookTitle], [Pages], [PublishedDate], [GenreID], [PublisherID], [AuthorID], [BookFormat]) VALUES (1, N'The Untethered Soul', 196, CAST(N'2007-10-03' AS Date), N'SFH', 1, 1, N'PPR')
GO
INSERT [dbo].[BookInventory] ([BookID], [BookTitle], [Pages], [PublishedDate], [GenreID], [PublisherID], [AuthorID], [BookFormat]) VALUES (2, N'The Power of Now', 229, CAST(N'1997-01-01' AS Date), N'SFH', 2, 1, N'DIG')
GO
INSERT [dbo].[BookInventory] ([BookID], [BookTitle], [Pages], [PublishedDate], [GenreID], [PublisherID], [AuthorID], [BookFormat]) VALUES (3, N'Harry Potter and the Deathly Hollow', 759, CAST(N'2007-07-21' AS Date), N'FAN', 3, 1, N'HRD')
GO
INSERT [dbo].[BookInventory] ([BookID], [BookTitle], [Pages], [PublishedDate], [GenreID], [PublisherID], [AuthorID], [BookFormat]) VALUES (4, N'Circe', 393, CAST(N'2018-04-10' AS Date), N'FAN', 4, 1, N'HRD')
GO
INSERT [dbo].[BookInventory] ([BookID], [BookTitle], [Pages], [PublishedDate], [GenreID], [PublisherID], [AuthorID], [BookFormat]) VALUES (5, N'The Book of Longings', 416, CAST(N'2020-04-21' AS Date), N'HFIC', 5, 1, N'HRD')
GO
INSERT [dbo].[BookInventory] ([BookID], [BookTitle], [Pages], [PublishedDate], [GenreID], [PublisherID], [AuthorID], [BookFormat]) VALUES (6, N'The Gifts of Imperfection', 137, CAST(N'2010-08-27' AS Date), N'NFIC', 6, 1, N'PPR')
GO
INSERT [dbo].[BookInventory] ([BookID], [BookTitle], [Pages], [PublishedDate], [GenreID], [PublisherID], [AuthorID], [BookFormat]) VALUES (7, N'Daring Greatly', 287, CAST(N'2012-09-11' AS Date), N'NFIC', 7, 1, N'PPR')
GO
INSERT [dbo].[BookInventory] ([BookID], [BookTitle], [Pages], [PublishedDate], [GenreID], [PublisherID], [AuthorID], [BookFormat]) VALUES (8, N'Harry Potter and the Order of the Phoenix', 912, CAST(N'2004-09-01' AS Date), N'FAN', 8, 1, N'HRD')
GO
INSERT [dbo].[BookInventory] ([BookID], [BookTitle], [Pages], [PublishedDate], [GenreID], [PublisherID], [AuthorID], [BookFormat]) VALUES (9, N'Living Untethered', 200, CAST(N'2022-05-10' AS Date), N'SFH', 1, 1, N'PPR')
GO
INSERT [dbo].[BookInventory] ([BookID], [BookTitle], [Pages], [PublishedDate], [GenreID], [PublisherID], [AuthorID], [BookFormat]) VALUES (10, N'Harry Potter and the Deathly Hollow', 759, CAST(N'2007-07-21' AS Date), N'FAN', 3, 1, N'AUD')
GO
INSERT [dbo].[Borrower] ([BorrowerID], [FName], [LName]) VALUES (1, N'Sandy', N'Palmer')
GO
INSERT [dbo].[Borrower] ([BorrowerID], [FName], [LName]) VALUES (2, N'Jessica', N'Donaldson')
GO
INSERT [dbo].[Borrower] ([BorrowerID], [FName], [LName]) VALUES (3, N'Mandy', N'Minder')
GO
INSERT [dbo].[Borrower] ([BorrowerID], [FName], [LName]) VALUES (4, N'Johnny', N'Jones')
GO
INSERT [dbo].[Borrower] ([BorrowerID], [FName], [LName]) VALUES (5, N'Donald', N'Dafner')
GO
INSERT [dbo].[Loaned] ([LoanID], [LoanDate], [Active_NotActive], [BorrowerID], [BookID]) VALUES (1, CAST(N'2023-01-02' AS Date), 1, 1, 3)
GO
INSERT [dbo].[Loaned] ([LoanID], [LoanDate], [Active_NotActive], [BorrowerID], [BookID]) VALUES (2, CAST(N'2023-01-02' AS Date), 1, 1, 1)
GO
INSERT [dbo].[Loaned] ([LoanID], [LoanDate], [Active_NotActive], [BorrowerID], [BookID]) VALUES (3, CAST(N'2023-01-02' AS Date), 0, 4, 9)
GO
INSERT [dbo].[Loaned] ([LoanID], [LoanDate], [Active_NotActive], [BorrowerID], [BookID]) VALUES (4, CAST(N'2023-01-02' AS Date), 1, 2, 2)
GO
INSERT [dbo].[Loaned] ([LoanID], [LoanDate], [Active_NotActive], [BorrowerID], [BookID]) VALUES (5, CAST(N'2023-01-02' AS Date), 0, 3, 10)
GO

/* USE BookDB;

INSERT INTO Author VALUES(1, 'Michael', 'Singer')
INSERT INTO Author VALUES(2, 'Ekhart', 'Tolle')
INSERT INTO Author VALUES(3, 'J.K.', 'Rowling')
INSERT INTO Author VALUES(4, 'Madeline', 'Miller')
INSERT INTO Author VALUES(5, 'Sue', 'Monk Kidd')
INSERT INTO Author VALUES(6, 'Brene', 'Brown')

SELECT * FROM Author; 

USE BookDB;

INSERT INTO Publisher VALUES(1, 'New Harbinger Publications')
INSERT INTO Publisher VALUES(2, 'New World Library')
INSERT INTO Publisher VALUES(3, 'Arthur A. Levine Books')
INSERT INTO Publisher VALUES(4, 'Little, Brown and Company')
INSERT INTO Publisher VALUES(5, 'Viking')
INSERT INTO Publisher VALUES(6, 'Hazelden Publishing')
INSERT INTO Publisher VALUES(7, 'Avery')
INSERT INTO Publisher VALUES(8, 'Scholastic, Inc.')

SELECT * FROM Publisher; 

INSERT INTO BookFormat VALUES('HRD', 'Hardcover')
INSERT INTO BookFormat VALUES('PPR', 'Paperback')
INSERT INTO BookFormat VALUES('DIG', 'Digital')
INSERT INTO BookFormat VALUES('AUD', 'Audio')
INSERT INTO BookFormat VALUES('MAU', 'Manuscript')

SELECT * FROM BookFormat; 

INSERT INTO Genre VALUES('SFH', 'Self Help')
INSERT INTO Genre VALUES('FAN', 'Fantasy')
INSERT INTO Genre VALUES('HFIC', 'Historical Fiction')
INSERT INTO Genre VALUES('NFIC', 'Nonfiction')
INSERT INTO Genre VALUES('FIC', 'Fiction')
INSERT INTO Genre VALUES('MYS', 'Mystery')

SELECT * FROM Genre; 

INSERT INTO Borrower VALUES(1, 'Sandy', 'Palmer')
INSERT INTO Borrower VALUES(2, 'Jessica', 'Donaldson')
INSERT INTO Borrower VALUES(3, 'Mandy', 'Minder')
INSERT INTO Borrower VALUES(4, 'Johnny', 'Jones')
INSERT INTO Borrower VALUES(5, 'Donald', 'Dafner')

SELECT * FROM Borrower; 

USE BookDB;

INSERT INTO BookInventory VALUES(1, 'The Untethered Soul', 196, '2007-10-03', 'SFH', 1, 1, 'PPR')
INSERT INTO BookInventory VALUES(2, 'The Power of Now', 229, '1997-01-01', 'SFH', 2, 1, 'DIG')
INSERT INTO BookInventory VALUES(3, 'Harry Potter and the Deathly Hollow', 759, '2007-07-21', 'FAN', 3, 1, 'HRD')
INSERT INTO BookInventory VALUES(4, 'Circe', 393, '2018-04-10', 'FAN', 4, 1, 'HRD')
INSERT INTO BookInventory VALUES(5, 'The Book of Longings', 416, '2020-04-21', 'HFIC', 5, 1, 'HRD')
INSERT INTO BookInventory VALUES(6, 'The Gifts of Imperfection', 137, '2010-08-27', 'NFIC', 6, 1, 'PPR')
INSERT INTO BookInventory VALUES(7, 'Daring Greatly', 287, '2012-09-11', 'NFIC', 7, 1, 'PPR')
INSERT INTO BookInventory VALUES(8, 'Harry Potter and the Order of the Phoenix', 912, '2004-09-01', 'FAN', 8, 1, 'HRD')
INSERT INTO BookInventory VALUES(9, 'Living Untethered', 200, '2022-05-10', 'SFH', 1, 1, 'PPR')
INSERT INTO BookInventory VALUES(10, 'Harry Potter and the Deathly Hollow', 759, '2007-07-21', 'FAN', 3, 1, 'AUD')

SELECT * FROM BookInventory; 

INSERT INTO Loaned VALUES(1, '2023-01-02', 1, 1, 3)
INSERT INTO Loaned VALUES(2, '2023-01-02', 1, 1, 1)
INSERT INTO Loaned VALUES(3, '2023-01-02', 0, 4, 9)
INSERT INTO Loaned VALUES(4, '2023-01-02', 1, 2, 2)
INSERT INTO Loaned VALUES(5, '2023-01-02', 0, 3, 10)

SELECT * FROM Loaned; */
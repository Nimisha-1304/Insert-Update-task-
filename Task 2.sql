USE LibraryDB;
INSERT INTO authors (Name, Country) VALUES
('J.K. Rowling', 'UK'),
('George R.R. Martin', 'USA'),
('Chetan Bhagat', NULL); -- Country missing
-- Insert into Genres
INSERT INTO Genres (GenreName) VALUES 
('Fantasy'),
('Thriller'),
('Romance');

-- Insert into Books
INSERT INTO Books (Title, AuthorID, GenreID, ISBN, Year) VALUES 
('Harry Potter', 1, 1, '9780439554930', 1997),
('Game of Thrones', 2, 1, '9780553593716', 1996),
('The 3 Mistakes of My Life', 3, 2, NULL, 2008); -- Missing ISBN

-- Insert into Members
INSERT INTO Members (Name, Email, Phone) VALUES 
('Nimisha Patil', 'nimisha@example.com', '9876543210'),
('Yash Pawar', 'yash12@example.com', '9998887776'), -- Missing email
('Sneha Kamat', 'sneha@example.com', NULL); -- Missing phone

-- Insert into Borrowings
INSERT INTO Borrowings (BookID, MemberID, BorrowDate, ReturnDate) VALUES 
(1, 1, '2025-06-01', '2025-06-10'),
(2, 2, '2025-06-05', NULL), -- Book not yet returned
(3, 3, '2025-06-10', '2025-06-20');
SET SQL_SAFE_UPDATES = 0;

-- Update missing Country for Chetan Bhagat
UPDATE Authors 
SET Country = 'India' 
WHERE Name = 'Chetan Bhagat';

-- Update ISBN that was NULL
UPDATE Books 
SET ISBN = '9788129135513' 
WHERE Title = 'The 3 Mistakes of My Life';

-- Update Email for Yash Pawar
UPDATE Members 
SET Email = 'yash@example.com' 
WHERE Name = 'Yash Pawar ';

-- Delete a member who is inactive or test data
DELETE FROM Members 
WHERE Name = 'Sneha Kamat' AND Email IS NULL;

-- Delete borrowings where return date is still NULL and overdue
DELETE FROM Borrowings 
WHERE ReturnDate IS NULL AND BorrowDate < '2025-06-01';

SELECT * FROM authors;
SELECT * FROM genres;
SELECT * FROM books;
SELECT * FROM members;
SELECT * FROM borrowings;

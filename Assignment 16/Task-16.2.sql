-- Sample Data for Books Table
INSERT INTO Books (title, author, isbn, publication_year, genre, total_copies, available_copies) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 1925, 'Classic', 5, 3),
('1984', 'George Orwell', '9780451524935', 1949, 'Dystopian', 3, 2),
('To Kill a Mockingbird', 'Harper Lee', '9780061120084', 1960, 'Fiction', 4, 4);

-- Sample Data for Members Table
INSERT INTO Members (first_name, last_name, address, phone_number, email, registration_date) VALUES
('Alice', 'Smith', '123 Main St, Anytown', '555-123-4567', 'alice.smith@example.com', '2023-01-15'),
('Bob', 'Johnson', '456 Oak Ave, Otherville', '555-987-6543', 'bob.j@example.com', '2023-02-20'),
('Carol', 'Williams', '789 Pine Ln, Somewhere', '555-555-1212', 'carol.w@example.com', '2023-03-10');

-- Sample Data for Loans Table
-- Assuming book_id and member_id are 1, 2, 3 based on auto-increment from previous inserts
INSERT INTO Loans (book_id, member_id, loan_date, due_date, return_date) VALUES
(1, 1, '2024-05-01', '2024-05-15', NULL),
(2, 2, '2024-05-03', '2024-05-17', '2024-05-16'),
(1, 3, '2024-05-05', '2024-05-19', NULL);

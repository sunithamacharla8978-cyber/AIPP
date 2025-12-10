SELECT
    B.title AS BookTitle,
    B.author AS BookAuthor,
    L.loan_date AS LoanDate,
    L.due_date AS DueDate,
    L.return_date AS ReturnDate
FROM
    Books AS B
JOIN
    Loans AS L ON B.book_id = L.book_id
JOIN
    Members AS M ON L.member_id = M.member_id
WHERE
    M.member_id = [MEMBER_ID]; -- Replace [MEMBER_ID] with the actual member's ID

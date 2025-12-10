UPDATE Books
SET available_copies = available_copies - 1
WHERE book_id = [BOOK_ID]; -- Replace [BOOK_ID] with the actual book's ID

-- Step 1: Delete all loan records associated with the member
DELETE FROM Loans
WHERE member_id = [MEMBER_ID]; -- Replace [MEMBER_ID] with the actual member's ID

-- Step 2: Delete the member record
DELETE FROM Members
WHERE member_id = [MEMBER_ID]; -- Replace [MEMBER_ID] with the actual member's ID

ALTER TABLE Loans
DROP FOREIGN KEY (member_id); -- Or drop and re-add if named

ALTER TABLE Loans
ADD CONSTRAINT fk_member_id_on_delete
FOREIGN KEY (member_id)
REFERENCES Members(member_id)
ON DELETE CASCADE;

--Created book name and contact type column
ALTER TABLE AddressBook
ADD Book_Name VARCHAR(20),
Contact_Type VARCHAR(20);
-- updated contact type
UPDATE AddressBook
SET Contact_Type = 'Friend'
WHERE first_name = 'Bhanu';

UPDATE AddressBook
SET Contact_Type = 'Family'
WHERE first_name = 'Kalyan';

UPDATE AddressBook
SET Contact_Type = 'Profession'
WHERE first_name = 'Anand' ;

-- updated book name
UPDATE AddressBook
SET Book_Name = 'Person book';

select * from AddressBook;
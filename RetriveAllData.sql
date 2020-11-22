-- Retrive count of the person belong to the particular contact type
select Contact_Type,COUNT(Contact.Phone_Number) as Total_Count
FROM Contact INNER JOIN Contact_Type  
ON Contact.Contact_typeID = Contact_Type.Contact_typeID
GROUP BY Contact_Type;
-- Retrive first name and bookname of a persons in the contact table
select Contact.first_name,Contact_BookName.Book_name
FROM Contact INNER JOIN Contact_BookName  
ON Contact.PersonId = Contact_BookName.PersonId
GROUP BY Contact.first_name,Contact_BookName.Book_name;
-- retrive all person belong to particular city
select * from Contact
where City = 'New York';
-- retrive all the data from contact based on the particular state
select * from Contact
where State = 'NY';
-- count person by city and store  total count column where grouped by city
select city,COUNT(city) as total_count
from Contact 
group by city
-- count person by state and store  total count column where grouped by city
select state,COUNT(state) as total_count
from Contact 
group by state
-- Sort contact based on the firstname for the particular city
select * from Contact 
where city = 'Chicago'
order by first_name;

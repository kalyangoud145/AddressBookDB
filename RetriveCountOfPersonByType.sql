--Get Count of Contacts By Contact_Type
SELECT Contact_Type,COUNT(Contact_Type) AS Total_Count
FROM AddressBook
GROUP BY Contact_Type;

select * from AddressBook
use AddressBookServiceDB
--Updated existing contacts
update AddressBook
set email = 'kalyangoud145@gmail.com'
where first_name = 'Kalyan' ;

update AddressBook
set state = 'Ts'
where first_name = 'Bhanu' ;
-- display table
select * from AddressBook
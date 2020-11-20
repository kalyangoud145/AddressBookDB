-- count person by city and store  total count column where grouped by city
select city,COUNT(city) as total_count
from AddressBook 
group by city

-- count person by state and store  total count column where grouped by city
select state,COUNT(state) as total_count
from AddressBook 
group by state



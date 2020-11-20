create table AddressBook
(
    first_name varchar(30) not null,
    last_name varchar(20) not null,
    address varchar(50) not null,
    city varchar(15),
    state varchar(15),
    zip int,
    phone_number varchar(10) not null,
	email varchar(30) not null
);

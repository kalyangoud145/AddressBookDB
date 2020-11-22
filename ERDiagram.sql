--Created contact table 
CREATE TABLE Contact
(
	PersonId int NOT NULL PRIMARY KEY identity(1,1),
    first_name VARCHAR(30) NOT NULL ,
    last_name varchar(25) not null,
    Address varchar(60) not null,
    City varchar(15) not null,
    State varchar(20) not null,
    Zip varchar(6) not null,
    Phone_Number varchar(12) not null ,
	Contact_typeID int FOREIGN KEY REFERENCES Contact_Type(Contact_typeID)
);
-- Inserted values into contact table
INSERT into Contact
VALUES
( 
    'Sue','Black','1000 Michigan Ave.','Chicago','IL',60605,'3889233120',3
),
(
    'Mike','Brown','360 Delmar Blvd.','New York','NY',10011,'8832322103',2
),
(
    'Liz','White','100 5th Ave.','New York','NY',10012,'8043232213',1
),
(
    'Meg','Stephenson','450 Stout St.','Denver','CO',80204,'7884440432',2
),
(
    'John','Gray','500 South St.','Chicago','IL',60605,'8334432122',1
);
-- Created contact type table
create table Contact_Type
(
	Contact_typeID int not null Primary Key,
    Contact_Type varchar(20) not null 
);
-- Inserted values into contact type
INSERT into Contact_Type
VALUES
(
    1,'Friends'
),
(
    2,'Professional'
),
(
    3,'Family'
)
;
-- Created contact book name tabel
CREATE TABLE Contact_BookName
(
	PersonId int FOREIGN KEY REFERENCES Contact(PersonId),
	BookID int not null PRIMARY KEY identity(1,1),
    Book_name VARCHAR(30) NOT NULL 
)
-- Inserted values into contact book name
INSERT into Contact_BookName
VALUES
(
    1,'MyBook'
),
(
    2,'Office'
),
(
    3,'Friends'
),
(
    4,'college'
),
(
    5,'local'
)

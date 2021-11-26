create database AddressBookService;
use AddressBookService;
create table Address_book(id int unsigned not null auto_increment,
	
first_name varchar(15) not null,
last_name varchar(10) not null,
    
city varchar(50) not null,
state varchar(50) not null,
    
zip int not null,
phone long not null,
email varchar(100) not null,
 
primary key (id)
);
insert into Address_book (first_name, last_name, city, state, zip, phone, email) values ('subham','das','durgapur','bengal',713207,7003321213,'subham@gmail.com');
insert into Address_book (first_name, last_name, city, state, zip, phone, email) values ('avishek','paul','kolkata','bengal',700207,956526813,'paul@gmail.com');
insert into Address_book (first_name, last_name, city, state, zip, phone, email) values ('saurav','kumar','gaya','bihar',95207,659889994,'saurav@gmail.com');
insert into Address_book (first_name, last_name, city, state, zip, phone, email) values ('sanjay','das','patna','bihar',2641,4632253,'sanjay@gmail.com');

update Address_Book set phone = 9609125582 where first_name ='subham';
select * from Address_Book;

delete from Address_book where first_name ='subham';

select *from Address_Book where city ='durgapur' or state = 'bengal';

select COUNT(city or state)
FROM Address_book;

select * from Address_Book order by first_name;

 Alter table Address_book add type varchar(15) after last_name;

update Address_Book set type ='friend' where first_name = 'avishek';
update Address_Book set type ='family' where first_name = 'sanjay';
update Address_Book set type ='professional' where first_name = 'saurav';

SELECT COUNT(type) AS NumberOfContactPerson 
FROM Address_book;



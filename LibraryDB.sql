--CREATE DATABASE LibraryDB
use LibraryDB

CREATE TABLE Book
(
bookId		int primary key,
bookName	varchar(50)
);

CREATE TABLE LibraryUser
(
userId		int primary key,
username	varchar(25),
password	varchar(25),
fullName	varchar(25),
gender		varchar(25),
birthdate	date,
);

CREATE TABLE Schedule
(
scheduleId	int primary key,
userId		int,
bookId		int,
takenDate	datetime,
broughtDate	datetime,
foreign key (userId) references LibraryUser(userId),
foreign key (bookId) references Book(bookId)
);

insert into Book values (1, 'ABC Book');
insert into Book values (2, 'BBB Book');
insert into Book values (3, 'CCC Book');
insert into Book values (4, 'DDD Book');
insert into Book values (5, 'ASD Book');

insert into LibraryUser values (1, 'user', '12345', 'user a', 'male', '11/10/1999');
insert into LibraryUser values (2, 'user2', '12345', 'user b', 'female', '11/11/1997');
insert into LibraryUser values (3, 'user3', '12345', 'user c', 'female', '12/10/1998');
insert into LibraryUser values (4, 'user4', '12345', 'user d', 'male', '08/10/1998');
insert into LibraryUser values (5, 'user5', '12345', 'user e', 'male', '05/12/1993');

insert into Schedule values (1, 1, 1, '05/01/2021', '05/10/2011');
insert into Schedule values (2, 2, 2, '05/02/2021', '05/11/2011');
insert into Schedule values (3, 3, 3, '05/03/2021', '05/12/2011');
insert into Schedule values (4, 4, 4, '05/04/2021', '05/13/2011');
insert into Schedule values (5, 5, 5, '05/05/2021', '05/14/2011');

Select LibraryUser.fullName as 'Full Name',Book.bookName as 'Book Name',takenDate,broughtDate from LibraryUser join Schedule on LibraryUser.userId = Schedule.userId join Book on Book.bookId = Schedule.bookId
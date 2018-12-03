
create database dbLibrary

use dbLibrary

--create library branch table, populate
create table tblLIBRARY_BRANCH (BranchID int primary key identity(1,1) not null, BranchName varchar(50), LibAddress varchar(50))

insert into tblLIBRARY_BRANCH (BranchName,LibAddress)
values
('central','123 fake street'),
('Sharpstown','3243 sharp street'),
('Schaumburg','765 Roselle rd'),
('newcastle','222 coal creek ave')

select * from tblLIBRARY_BRANCH

--create publisher table, populate
create table tblPublisher (PublisherName varchar(50) primary key not null, pubaddress varchar(50), phone varchar(20))

insert into tblPublisher (publisherName, pubaddress, phone)
values

('Hachette Book Group', '432 wood st chicago', '773.678.8567'),
('Harper Collins',' 3343 granger st St louis', '745.412.8908'),
('Penguin Random House', '18 cold st South pole', '555.555.5555'),
('Mcmillan',' 589 avenida luna Quito', '098.263.5683'),
('Clearing House', '999 Cash lane Las Vegas','123.456.7890')

select* from tblPublisher

--create then populate Books table

create table tblBooks (BookID int identity(1,1) not null primary key, title varchar(50),
 PublisherName varchar(50)foreign key references tblPublisher(publishername) )

insert into tblBooks (title, PublisherName)
values
('The lost tribe','Hachette Book Group'),
('Winter', 'Penguin Random House'),
('Misery','Clearing House'),
('Musrhooms of the pacific northwest ','Penguin Random House'),
('Barcelona City Guide ','Penguin Random House'),
('Cooking over an open fire ','Penguin Random House'),
('Training dogs ','Penguin Random House'),
('The Count of MonteCristo ','Mcmillan'),
('Shantaram','Mcmillan'),
('El Alquimista ','Mcmillan'),
('The Born Identity ','Mcmillan'),
('How To Change your Minnd ','Mcmillan'),
('Teaming with Microbes ','Mcmillan'),
('fermentation 101 ','Mcmillan'),
('House plant index ','Clearing House'),
('Astronomy ','Clearing House'),
('Japanese cooking','Clearing House'),
('Parenting ','Clearing House'),
('carpentry tips and tricks','Clearing House'),
('how to ace the interview ','Clearing House'),
('20,000 leagues under the sea ','Hachette Book Group'),
('Puget Sound free dive ','Hachette Book Group'),
('javascript ','Hachette Book Group'),
('another way ','Hachette Book Group'),
('Build your own house ','Hachette Book Group'),
('Sailing 101 ','Harper Collins')

select * from tblBooks
--create then populate table book authors

create table tblBookAuthors (bookid int foreign key(bookid) references [tblbooks] (bookid) 
not null, AuthorName varchar(50))



insert into  tblBookAuthors (bookid, authorname)
values

(1,'Erik Gross' ),
(2,'Stephen King '),
(3,'Stephen King '),
(4,'Erik Amundsen '),
(5,'Carl Kelley '),
(6,'Francis Mallman '),
(7,'Kristina Husby '),
(8,'Aexandre Dumas'),
(9,'Gregory David Roberts '),
(10,'Paul Coehlo '),
(11,' Robert Ludlam'),
(12,'Michael Pollan '),
(13,'Judy Howard '),
(14,'renee redzepi '),
(15,' Matt kelley'),
(16,'Tim Anderson '),
(17,'Kristina Sensei '),
(18,'Guy Davis '),
(19,'Tech Academy '),
(20,'Ursela Nemo '),
(21,'Erik Amundsen '),
(22,'Jenni Hubsy '),
(23,'Doc Marten '),
(24,'Bob Villa '),
(25,'Mike Birbiglia'),
(26,'Mike Birbiglia')

select * from tblbookauthors
--create then populate tblbookcopies with 2 foreign keys

create table tblBookCopies (bookId int foreign key references tblbooks(bookid), 
branchid int foreign key references tblLibrary_branch(branchid), numberOfCopies int)

insert into tblBookCopies (bookid,branchid,numberofcopies)
values
(1  ,1,3 ),
( 1 ,2,3 ),
(  1,3,3 ),
(  1,4,3 ),
(2  ,1,3 ),
( 2 ,2,3 ),
(  2,3,3 ),
(  2,4,3 ),
(3  ,1,3 ),
( 3 ,2,3 ),
( 3 ,3,3 ),
(3  ,4,3 ),
(4  ,1,3 ),
(4  ,2,3 ),
(4  ,3,3 ),
(4  ,4,3 ),
(5  ,1,3 ),
(5  ,2,3 ),
(5  ,3,3 ),
(5  ,4,3 ),
(6  ,1,3 ),
(6  ,2,3 ),
(6  ,3,3 ),
(6  ,4,3 ),
(7  ,1,3 ),
( 7 ,2,3 ),
(7  ,3,3 ),
(7  ,4,3 ),
(8  ,1,3 ),
(8  ,2,3 ),
(8  ,3,3 ),
(8  ,4,3 ),
(9  ,1,3 ),
(9  ,2,3 ),
(9  ,3,3 ),
(9  ,4,3 ),
(10  ,1,3 ),
(10  ,2,3 ),
(10  ,3,3 ),
(10  ,4,3 ),
(11  ,1,3 ),
( 11 ,2,3 ),
(11  ,3,3 ),
(11  ,4,3 ),
(12  ,1,3 ),
(12  ,2,3 ),
(12  ,3,3 ),
( 12 ,4,3 ),
( 13 ,1,3 ),
( 13 ,2,3 ),
(13  ,3,3 ),
(13  ,4,3 ),
(14  ,1,3 ),
(14  ,2,3 ),
( 14 ,3,3 ),
( 14 ,4,3 ),
(15  ,1,3 ),
(15  ,2,3 ),
( 15 ,3,3 ),
( 15 ,4,3 ),
( 16 ,1,3 ),
( 16 ,2,3 ),
(16  ,3,3 ),
(16  ,4,3 ),
(17  ,1,3 ),
( 17 ,2,3 ),
( 17 ,3,3 ),
(17  ,4,3 ),
(18  ,1,3 ),
(18  ,2,3 ),
(18  ,3,3 ),
(18  ,4,3 ),
(19  ,1,3 ),
(19  ,2,3 ),
(19  ,3,3 ),
(19  ,4,3 ),
(20  ,1,3 ),
(20  ,2,3 ),
( 20 ,3,3 ),
( 20 ,4,3 ),
( 21 ,1,3 ),
( 21 ,2,3 ),
( 21 ,3,3 ),
( 21 ,4,3 ),
( 22 ,1,3 ),
( 22 ,2,3 ),
( 22 ,3,3 ),
( 22 ,4,3 ),
( 23 ,1,3 ),
( 23 ,2,3 ),
( 23 ,3,3 ),
( 23 ,4,3 ),
( 24 ,1,3 ),
( 24 ,2,3 ),
(24  ,3,3 ),
(24  ,4,3 ),
(25  ,1,3 ),
(25  ,2,3 ),
(25  ,3,3 ),
(25  ,4,3 ),
(26  ,1,3 ),
( 26 ,2,3 ),
( 26 ,3,3 ),
(26  ,4,3 )

select * from tblBookCopies


--create  tblBorrower , out of order to allow for foreign key
create table tblBorrower (cardNo int primary key identity(1,1) not null, Name varchar(50) not null,
 borAddress varchar(50), phone varchar(20))
 
 ---populate tbl borrower created on line 220

insert into tblBorrower (name, borAddress, phone)
values
('David Amundsen  ', '1400 86th pl  ', '773.886.7425  '),
(' kristin Amundsen ', ' 567 rose drive ', '773.886.7425  '),
(' Tim Anderson ', ' 1354 Fury street ', '773.886.7425  '),
(' Allison Asimakopoulos ', ' 543 naperville ave ', '773.886.7425  '),
('Barack Obama  ', ' 1400 pensylvania ave  ', '773.886.7425  '),
(' Soren Atlas ', ' 5423 bula court ', '773.886.7425  '),
(' Paulino Iza ', ' via la merced ', '773.886.7425  '),
(' Dave Bjorlin ', '423 ashland ave ', '773.886.7425  '),
('judy amundse  ', ' 835 yorkshire drive ', '773.886.7425  '),
(' pete zaa ', '432 loumalnatis way  ', '773.886.7425  '),
(' luna pastuer', ' 432 via tumbaco ', '773.886.7425  '),
(' guy davis ', ' 5435 hilltop rd ', '773.886.7425  ')

select* from tblBorrower
 --create then populate tblBookLoans

create table tblBookLoans ( bookid int foreign key references tblbooks(bookid) not null , branchid int foreign key references tblLibrary_branch(branchid) not null, 
cardno int foreign key references tblBorrower(cardno), dateout date, dateDue date)  


insert into tblBookLoans ( bookid, branchid, cardno, dateout,datedue)
values

(1,1,1,'2018-11-01','2018-12-01'),
(1,2,1,'2018-11-01','2018-12-01'),
(2,1,3,'2018-11-01','2018-12-01'),
(2,3,10,'2018-11-03','2018-12-03'),
(3,3,5,'2018-11-01','2018-12-01'),
(4,4,3,'2018-11-01','2018-12-01'),
(5,1,1,'2018-11-01','2018-12-01'),
(6,2,1,'2018-11-01','2018-12-01'),
(6,1,3,'2018-11-01','2018-12-01'),
(7,3,10,'1986-11-01','2018-12-01'),
(7,3,5,'2018-11-01','2018-12-01'),
(8,1,6,'2018-11-01','2018-12-01'),
(8,2,7,'2018-11-01','2018-12-01'),
(3,1,8,'2018-11-01','2018-12-01'),
(3,3,10,'2018-11-01','2018-12-01'),
(4,3,5,'2018-11-01','2018-12-01'),
(5,1,3,'2018-11-01','2018-12-01'),
(9,2,9,'2018-11-01','2018-12-01'),
(9,1,9,'2018-11-01','2018-12-01'),
(10,3,10,'2018-11-01','2018-12-01'),
(10,3,7,'2018-11-01','2018-12-01'),
(11,1,6,'2018-11-01','2018-12-01'),
(11,2,5,'2018-11-01','2018-12-01'),
(12,3,3,'2018-11-01','2018-12-01'),
(12,2,10,'2018-11-01','2018-12-01'),
(13,3,5,'2018-11-01','2018-12-01'),
(13,1,1,'2018-11-01','2018-12-01'),
(14,2,4,'2018-11-01','2018-12-01'),
(14,1,3,'2018-11-01','2018-12-01'),
(15,3,10,'2018-11-01','2018-12-01'),
(15,4,5,'2018-11-01','2018-12-01'),
(16,1,1,'2018-11-01','2018-12-01'),
(16,2,2,'2018-11-01','2018-12-01'),
(17,1,3,'2018-11-01','2018-12-01'),
(17,3,10,'2018-11-01','2018-12-01'),
(18,3,5,'2018-11-01','2018-12-01'),
(18,1,1,'2018-11-01','2018-12-01'),
(19,2,9,'2018-11-01','2018-12-01'),
(19,1,3,'2018-11-01','2018-12-01'),
(20,4,10,'2018-11-01','2018-12-01'),
(20,3,8,'2018-11-01','2018-12-01'),
(21,1,1,'2018-11-01','2018-12-01'),
(21,2,7,'2018-11-01','2018-12-01'),
(22,1,3,'2018-11-01','2018-12-01'),
(22,3,10,'2018-11-01','2018-12-01'),
(23,4,9,'2018-11-01','2018-12-01'),
(23,1,1,'2018-11-01','2018-12-01'),
(24,2,1,'2018-11-01','2018-12-01'),
(24,1,3,'2018-11-01','2018-12-01'),
(25,3,10,'2018-11-01','2018-12-01'),
(25,3,5,'2018-11-01','2018-12-01'),
(26,1,7,'2018-11-01','2018-12-01'),
(26,4,5,'2018-10-30','2018-11-30'),
(26,4,5,'2018-10-30','2018-12-03'),
(2,1,10,'2018-11-03','2018-12-03'),
(2,2,10,'2018-11-03','2018-12-03')


select * from tblBookLoans

--End of database creation code-----------------------------------------------




--1.) How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?( location 2)
create procedure spTLTCount
as

select   numberOfCopies as 'copies of The Last Tribe' from tblbookcopies where  bookid = 1 and  branchid=2

--execute
exec spTLTCount

-- 2.) How many copies of the book titled "The Lost Tribe" are owned by each library branch?

create procedure spFindByNameLocal

 @titlename varchar(50)
as


SELECT tblbooks.bookid, tblbooks.title, tblLIBRARY_BRANCH.BranchName, tblbookcopies.numberOfCopies
FROM tblBookCopies
INNER JOIN tblbooks ON  tblbookcopies.bookid=tblbooks.bookid
inner join tblLIBRARY_BRANCH on tblBookCopies.branchid=tblLIBRARY_BRANCH.BranchID

where tblbooks.title = 'The Lost Tribe'


--execute filling variable

exec [dbo].[spFindByNameLocal] @titlename = 'The Lost Tribe'



-- 3.) Retrieve the names of all borrowers who do not have any books checked out.
create procedure spNoneOut
as

select name
from tblborrower
left join tblbookloans on tblborrower.cardno=tblbookloans.cardno

where  tblbookloans.bookid is null

exec spNoneOut
 

 --4.) For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title,
 -- the borrower's name, and the borrower's address.

create procedure  
spDUEDATE
as
 select tblBooks.title as "Book Title", tblBorrower.name as 'Borrowers Name', tblBorrower.borAddress as 'Address', tblBookLoans.datedue as 'date due'
 from  tblbookloans
inner join  tblbooks 
on tblbookloans.bookid=tblbooks.bookid
inner join tblborrower
on  tblborrower.cardno=tblbookloans.cardno
 where datedue= convert (varchar(20) , getdate())
 and tblBookLoans.branchid  = 2;
 --Execute 4
 exec spDUEDATE


 --5.) For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
 create procedure spBOOKSOUT
 as
select  count( tblbookloans.branchid ) as 'Books Out' ,tblLIBRARY_BRANCH.branchname   
from  tblbookloans
inner join tblLIBRARY_BRANCH
on tblBookLoans.branchid=tblLIBRARY_BRANCH.branchid
group by branchname

--execute
exec spBOOKSOUT

--6.) Retrieve the names, addresses, and the number of books checked out for all borrowers 
--who have more than five books checked out.

create procedure spOVER5
as
select tblborrower.name as 'Borrower Name', tblborrower.borAddress as 'Borrowers Address',count(tblbookloans.cardno) as 'Books Out'
from tblborrower
inner join  tblBookLoans on tblborrower.cardno=tblbookloans.cardno
group by tblborrower.cardno, tblborrower.name, tblborrower.borAddress
having count(tblbookloans.cardno) > 5

--execute 6
exec spover5



 select * from tblBookAuthors
select * from tblBookCopies
select * from tblBookLoans
select * from tblBooks
select * from tblBorrower
select * from tblLIBRARY_BRANCH
select * from tblPublisher
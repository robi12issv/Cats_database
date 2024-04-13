create database cats;
create table breeds_for_dogs (
breedIDn int primary key auto_increment,
breedName varchar(30) not null,
breedId char(4) not null
);
create table breeds_for_kids (
breedIDn int primary key auto_increment,
breedName varchar(30) not null,
breedId char(4) not null
);
create table owners (
ownerId int primary key auto_increment,
ownerName varchar(20) not null,
kidORdog char(3)
);
create table neutered (
catId int primary key auto_increment)
select ownerid, firstname, catName
from owners
where ownerId = 1
or ownerid = 3;

alter table owners add column LastName varchar (12) not null;
alter table owners rename column ownerName to firstName;
alter table owners modify column kidORdog char(4);
alter table owners modify column LastName char(4) after firstName;
alter table owners add column breedId char(4), add catName varchar (10), add catbirth date;

insert into breeds_for_dogs (breedId, breedName) values ('bali', 'Balinese'), ('beng', 'Bengal'), ('crex', 'Cornish Rex'), ('cymr', 'Cymric'), 
('drex', 'Devon Rex'), ('jbob', 'Japanese Bobtail'), ('kuri', 'Kurilian'), ('manx', 'Manx'), ('ocic', 'Ocicat'), ('orie', 'Oriental'), 
('sava', 'Savannah'), ('siam', 'Siamese'), ('sing', 'Singapura'), ('tonk', 'Tonkinese'), ('tang', 'Turkish Angora');
insert into breeds_for_kids (breedName, breedId) values ('British Longhair', 'bslo'), ('California Spangled', 'cspa'), ('Cheetoh', 'chee'), 
('Devon Rex', 'drex'), ('Siamese', 'siam'), ('Sphynx', 'sphy'), ('Turkish Angora', 'tang');
insert into owners (firstName, lastName, kidORdog) values ('Robi', 'I', 'dog'), ('Ek', 'D', 'kid'), 
('Alex', 'Z', 'dog'), ('Oana', 'T', 'kid'), ('Ptef', 'I', 'kid'), ('Oliv', 'F', 'both'), ('Anna', 'S', 'both');
insert into neutered (ownerid, firstname, catName)
select ownerid, firstname, catName
from owners
where ownerId = 6
or ownerid = 7
or ownerid = 2;

update owners set breedId = 'kuri', catName = 'Lunica', catbirth = '2017-06-22' where ownerId = 1;
update owners set breedId = 'chee', catName = 'June', catbirth = '2023-11-2' where ownerId = 4;
update owners set breedId = 'bslo', catName = 'Aprilie', catbirth = '2019-02-03' where ownerId = 2;
update owners set breedId = 'sphy', catName = 'Mai', catbirth = '2019-02-04' where ownerId = 5;
update owners set breedId = 'beng', catName = 'Iulie', catbirth = '2024-04-04' where ownerId = 3;
update owners set breedId = 'drex', catName = 'August', catbirth = '2022-08-14' where ownerId = 7;
update owners set breedId = 'drex', catName = 'Septembrie', catbirth = '2022-12-09' where ownerId = 6;

select * from breeds_for_dogs;
select * from breeds_for_kids;
select * from owners;
select * from neutered;
select * from owners where kidORdog = 'dog';
select * from owners where kidORdog = 'kid';
select * from owners where kidORdog = 'both';

select * from breeds_for_dogs inner join breeds_for_kids on breeds_for_dogs.breedId = breeds_for_kids.breedId;
select * from owners inner join breeds_for_kids on owners.breedId = breeds_for_kids.breedId;
select * from owners inner join breeds_for_dogs on owners.breedId = breeds_for_dogs.breedId;

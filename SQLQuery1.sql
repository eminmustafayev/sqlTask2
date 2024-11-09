create database Panel
use Panel

create table Roles(
rolesId int primary key identity,
[Name] nvarchar(15))

create table Users(
[userId] int primary key identity,
Usarname nvarchar(15),
[Password] int,
[rolesId] int,
foreign key (rolesId) references Roles(rolesId),
CHECK ([Password ]>= 10000000 AND [Password] <= 99999999)--kod ancaq 8 reqemli ola biler
)
insert into Roles
values('Emin' )
insert into Roles
values('Admin' )
insert into Roles
values('Moderator' )
insert into Roles
values('Prezident' )
insert into Users
values('eminoyunda',12345678,1)
insert into Users
values('eminoyun',12345278,2)
insert into Users
values('eminbey',12345698,3)
insert into Users
values('AnarBey',87654321,4)









1.
 Users cədvəli :
 - Username
 - Password
Roles cədvəli :
 - Name
Users cədvəli ilə Roles cədvəli arasında relation qurun.
Hər userin 1 rolu ola bilər.(Misal: Admin, Moderator ve s.)


Usersleri rollari ile bir yerde cixaran sorgu yazin

 
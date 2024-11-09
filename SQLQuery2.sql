create database ikinci
use ikinci
 
CREATE TABLE Categories (
Id INT PRIMARY KEY IDENTITY,
 Name NVARCHAR(50),
 prodID int foreign key references Products(Id)
 )

 
CREATE TABLE Colors (
Id INT PRIMARY KEY IDENTITY,
Name NVARCHAR(50)
)


CREATE TABLE Products (
Id INT PRIMARY KEY IDENTITY,
Name NVARCHAR(100),
Price DECIMAL(10, 2),
Cost DECIMAL(10, 2),
 
)
create table ProductColor(
Id INT PRIMARY KEY IDENTITY,
prodId int foreign key references Products(Id),
colorId int foreign key references Colors(Id)
)
 SELECT 
    Products.Name AS ProductName,
    Categories.Name AS CategoryName,
    Colors.Name AS ColorName
FROM 
    Products
JOIN 
    Categories ON Products.Id = Categories.prodID
JOIN 
    ProductColor ON Products.Id = ProductColor.prodId
JOIN 
    Colors ON ProductColor.colorId = Colors.Id;
	--user intoyla deyisen vermeye catdirmadim sorry at
Create DataBase Relations5
use Relations5

create table  Users
(
Userid int primary key,
Username nvarchar(20),
[Password] int 
)
create table Roles
(
 Roleid int primary key,
 RoleName nvarchar(20)
)
create table UserRole
(
Userid int,
Roleid int,
FOREIGN KEY (Userid) REFERENCES Users(Userid),
FOREIGN KEY (Roleid) REFERENCES Roles(Roleid)
)
insert into Users
values (1,'Fidan)',123),(2,'alex',234)

insert into Roles
values (3,'Admin'),(4,'Moderator')

insert  into UserRole
values(1,3),(1,4),(2,3),(2,4)

SELECT 
    Users.Username, 
    Roles.RoleName 
	
	From UserRole
	JOIN Users ON UserRole.Userid = Users.Userid
	Join Roles ON UserRole.Userid = Roles.Roleid
	 
	 create table Products
	 (
	 ProductId int primary key,
	 ProductName nvarchar(23),
	 price decimal (2,2),
	 Cost decimal (2,1)
	 )

	 create table Categories 
	 (
	 CategoryId int primary key,
	 CategoryName nvarchar(12),

	 ProductId int,
	 Foreign key (ProductId) references Products(ProductId) 
	 )
	 

	 create table Colors
	 (
	 ColorId int primary key,
	 ColorName nvarchar(13)
	 )

	 create table ProductColor
	 (
	 ProductId int,
	 ColorId int,

	 Foreign key (ProductId) References Products(ProductId),
	 Foreign key (ColorId) References Colors(ColorId)
	 )
	 insert into Products Values (1,'koynek',0,1)
	 insert into Colors Values (2,'mavi')
	 insert into ProductColor values(1,2)

	SELECT 
    Products.Productname, 
    Colors.ColorName 
	
	From ProductColor
	JOIN Products ON ProductColor.ProductId = Products.ProductId
	Join Colors ON ProductColor.ProductId = Colors.ColorId
	

	 
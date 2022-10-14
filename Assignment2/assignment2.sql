create table Customers(
	Name varchar(100) not null,
	Address varchar(100) not null,
	Telephone int not null,
	ID int primary key
);
create table Items(
	Name varchar(100) not null unique,
	Description text not null,
	Price decimal(12.4) not null,
	Quantity int not null,
	ID int primary key
);
create table Orders(
	Code int primary key,
	Date date not null check(Date < getdate),
	CustomersID int not null foreign key references Customers(ID)
);
create table OrderItems(
	OrderCode int not null foreign key references Orders(Code),
	ItemsID int not null foreign key references Items(ID)
);
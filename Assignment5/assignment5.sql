create table Publishers(
	Name nvarchar(100) not null,
	Address nvarchar(100) not null,
	Id int primary key
);
create table Catagories(
	Name nvarchar(100) not null,
	Id int primary key
);
create table Authors(
	Name nvarchar(100) not null,
	Id int primary key
);
create table Books(
	Id varchar(20) primary key,
	Name nvarchar(100) not null,
	Description ntext,
	Year int not null,
	Time int not null,
	Price decimal(12,3) not null check(Price >=0) default 0,
	Quantity int not null check(Quantity>0),
	CatagoryId int not null foreign key references Catagories(Id),
	PublisherId int not null foreign key references Publishers(Id),
);
create table BookAuthor(
	BookId varchar(20) not null foreign key references Books(Id),
	AuthorId int not null foreign key references Authors(Id)
);
drop table BookAuthor;
drop table Books;
drop table Authors;
drop table Catagories;
drop table Publishers;

insert into Publishers(Name,Address,Id)
values(N'Tri Thuc',N'53 Nguyen Du, Hai Ba Trung, Ha Noi',1);

insert into Catagories(Name,Id)
values(N'Khoa hoc xa hoi',1);

insert into Authors(Name,Id)
values(N'Eran Katz',1);

insert into Books(Id,Name,Description,Year,Time,Price,Quantity,CatagoryId,PublisherId)
values(N'B001',N'Trí tu? Do Thái',N'B?n có mu?n bi?t: Ng??i Do Thái sáng t?o ra cái gì và ngu?n g?c
trí tu? c?a h? xu?t phát t? ?âu không? Cu?n sách này s? d?n hé l?
nh?ng bí ?n v? s? thông thái c?a ng??i Do Thái, c?a m?t dân t?c
thông tu? v?i nh?ng ph??ng pháp và k? thu?t phát tri?n t?ng l?p trí
th?c ?ã ???c gi? kín hàng nghìn n?m nh? m?t bí ?n m?t mang tính
v?n hóa.','2010',1,79,'100',1,1);

insert into BookAuthor(BookId,AuthorId)
values(N'B001',1);

-- cau 3
select * from Books where Year >= 2008;

-- cau 4
select top 10 * from Books order by Price desc;

-- cau 5
select * from Books where Name like '%tin hoc';

-- cau 6
select * from Books where Name like 'T%' order by Price desc;

-- cau 7
select * from Books where PublisherId in
(select Id from Publishers where Name like N'%Tri Thuc');

-- cau 8
select * from Publishers where Id in
(select PublisherId from Books where Name like N'Tri tue Do Thai');

-- cau 9
select a.Id,a.Name as bookName,a.Year,c.Name as pubName,b.Name as catName from Books a 
left join Catagories b on a.CataroryId = b.Id 
left join Publishers c on a.PublisherId = c.Id;

-- cau 10
select top 1 * from Books order by Price desc;

-- cau 11
select top 1 * from Books order by Quantity desc;

-- cau 12
select * from Books where Id in
(select BookId from BookAuthor where AuthorId in
(select Id from Authors where Name like 'Eran Katz'));

-- cau 13
update Books set Price = Price*90/100 where Year < 2008;

-- cau 14
select PublisherId,count(*) as soluongsach from Books group by PublisherId;

--cach2
select * from Publishers a left join 
(select PublisherId,count(*) as soluongsach from Books group by PublisherId) b on a.Id = b.PublisherId;

-- cau 15
select CatagoryId,count(*) as soluongsach from Books group by CatagoryId;

-- cau 16
create index bookname_index on Books(Name);

-- cau 17
create view thong_tin_sach as
select a.Id,a.Name, a.Price,b.Name as pubName,d.Name as authorName from Books a
left join Publishers b on a.PublisherId = b.Id
left join BookAuthor c on c.BookId = a.Id
left join Authors d on c.AuthorId = d.Id;

-- cau 18
create procedure them_sach @id varchar(20),@name nvarchar(100), @description ntext, @year int, @time int, @price decimal(12,3), @quantity int, @catagoryid int, @publisherid int as
insert into Books(Id,Name,Description,Year,Time,Price,Quantity,CartagoryId,PublisherId)
values(@id,@name,@description,@year,@time,@price,@quantity,@catagoryid,@publisherid);

create procedure tim_sach @q nvarchar(100) as
select * from Books where Name like N'%'+@q+'%';

create procedure liet_ke_theo_chuyen_mus @catid int as
select * from Books where CatagoryId = @catid;

-- cau 19
create trigger khong_xoa_sach
on Books
after delete
as
if exists (select * from deleted where Quantity > 0)
rollback transaction;

-- cau 20
create trigger khong_xoa_danh_muc
on Catagories
after delete
as
if exists (select * from deleted where Id in(select * from Books))
rollback transaction;
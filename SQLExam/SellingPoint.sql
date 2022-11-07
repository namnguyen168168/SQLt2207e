create table Categories(
	CateID char(6) primary key,
	CateName nvarchar(100) not null,
	Description nvarchar(200)
);
create table Parts(
	PartID int primary key identity(1,1),
	PartName nvarchar(100) not null,
	CateID char(6) foreign key references Categories(CateID),
	Description nvarchar(1000),
	Price money not null check(Price >=0) default 0,
	Quantity int default 0,
	Warranty int default 1,
	Photo nvarchar(200) default 'photo/nophoto.png'
);

--
insert into Categories(CateID,CateName,Description)
values(N'INTELA',N'CPU',N'With the 11th generation Intel processors, which now offer a clock frequency of up to 4.8 GHz 2 , your gaming PC switches on the turbo straight away. Up to 8 cores and 16 threads master every challenge with ease. Go straight to the max and see for yourself what this powerhouse has to offer.'),
(N'NVDGPU',N'GPU',N'NVIDIA GeForce RTX 40 Series GPUs are beyond fast for gamers and creators. They are powered by the ultra-efficient NVIDIA Ada Lovelace architecture which delivers a quantum leap in both performance and AI-powered graphics. Experience lifelike virtual worlds with ray tracing and ultra-high FPS gaming with the lowest latency. Discover revolutionary new ways to create and unprecedented workflow acceleration.'),
(N'KINRAM',N'RAM',N'Kingston makes it quick and easy to select compatible RAM memory for your Desktop PC, Laptop, or Server. Search by OEM brand system, OEM memory part number, or memory specifications. All Kingston memory is backed by 100% testing, a lifetime warranty and over 30 years of design and manufacturing expertise.');
insert into Parts(PartName,CateID,Description,Price,Quantity,Warranty,Photo)
values(N'Intel I7',N'INTELA',N'With the 11th generation Intel processors, which now offer a clock frequency of up to 4.8 GHz 2 , your gaming PC switches on the turbo straight away. Up to 8 cores and 16 threads master every challenge with ease. Go straight to the max and see for yourself what this powerhouse has to offer.','500',10,3,N'photo/nophoto.png'),
(N'RTX 4090',N'NVDGPU',N'NVIDIA GeForce RTX 40 Series GPUs are beyond fast for gamers and creators. They are powered by the ultra-efficient NVIDIA Ada Lovelace architecture which delivers a quantum leap in both performance and AI-powered graphics. Experience lifelike virtual worlds with ray tracing and ultra-high FPS gaming with the lowest latency. Discover revolutionary new ways to create and unprecedented workflow acceleration.','1500',10,5,N'photo/nophoto.png'),
(N'Kingston DDR4 16G',N'KINRAM',N'Kingston makes it quick and easy to select compatible RAM memory for your Desktop PC, Laptop, or Server. Search by OEM brand system, OEM memory part number, or memory specifications. All Kingston memory is backed by 100% testing, a lifetime warranty and over 30 years of design and manufacturing expertise.','50',100,2,N'photo/nophoto.png');

--
select * from Parts where Price > 100;

--
select * from Parts where CateID in (select CateID from Categories where CateName like 'CPU');

--
create view v_Parts as
select a.PartID,a.PartName,b.CateName,a.Price,a.Quantity from Parts a 
left join Categories b on a.CateID = b.CateID;

select * from v_Parts;

--
create view v_TopParts as
select top 5 PartName from Parts order by Price desc;

select * from v_TopParts;
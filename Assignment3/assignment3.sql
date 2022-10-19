create table NHACUNGCAP(
	MaNhaCC varchar(20) primary key,
	TenNhaCC nvarchar(100) not null,
	DiaChi varchar(100) not null,
	SoDT varchar(15) not null unique check(SoDT like '0%'),
	MaSoThue int not null unique
);
create table LOAIDICHVU(
	MaLoaiDV varchar(20) primary key,
	TenLoaiDV nvarchar(100) not null
);
create table MUCPHI(
	MaMP varchar(20) primary key,
	DonGia decimal(12,4) not null check(DonGia >=0) default 0,
	MoTa ntext
);
create table DONGXE(
	DongXe varchar(20) primary key,
	HangXe varchar(100) not null,
	SoChoNGoi int not null check(SoChoNgoi>0)
);
create table DANGKYCUNGCAP(
	MaDKCC varchar(20) primary key,
	MaNhaCC varchar(20) not null foreign key references NHACUNGCAP(MaNhaCC),
	MaLoaiDV varchar(20) not null foreign key references LOAIDICHVU(MaLoaiDV),
	MaMP varchar(20) not null foreign key references MUCPHI(MaMP),
	DongXe varchar(20) not null foreign key references DONGXE(DongXe),
	NgayBatDauCungCap date not null check(NgayBatDauCungCap <= getdate()),
	NgayKetThucCungCap date not null check(NgayKetThucCungCap <= getdate()),
	SoLuongXeDangKy int not null check(SoLuongXeDangKy>0)
);
drop table DANGKYCUNGCAP;
drop table DONGXE;
drop table MUCPHI;
drop table LOAIDICHVU;
drop table NHACUNGCAP;
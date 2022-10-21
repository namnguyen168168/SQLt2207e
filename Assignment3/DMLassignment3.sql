insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue)
values(N'NCC001',N'Cty TNHH Toan Phap',N'Hai Chau','05113999888',568941),
(N'NCC002',N'Cty Co Phan Dong Du',N'Lien Chieu','05113999889',456789),
(N'NCC003',N'Ông Nguyen Van A',N'Hoa Thuan','05113999890',321456),
(N'NCC004',N'Cty Co Phan Toàn Cau Xanh',N'Hai Chau','05113658945',513364),
(N'NCC005',N'Cty TNHH AMA',N'Thanh Khe','05113875466',546546),
(N'NCC006',N'Bà Tran Thi Bích Vân',N'Lien Chieu','05113587469',524545),
(N'NCC007',N'Cty TNHH Phan Thành',N'Thanh Khe','05113987456',113021),
(N'NCC008',N'Ông Phan Dình Nam',N'Hoa Thuan','05113532456',121230),
(N'NCC009',N'Tap Doàn Dông Nam Á',N'Lien Chieu','05113987121',533645),
(N'NCC010',N'Cty Co Phan Rang Dông',N'Lien Chieu','05113569654',187864);
select * from NHACUNGCAP;

insert into LOAIDICHVU(MaLoaiDV,TenLoaiDV)
values(N'DV01',N'Dich vu xe taxi'),
(N'DV02',N'Dich vu xe buýt công cong theo tuyen co dinh'),
(N'DV03',N'Dich vu xe cho thuê theo hop dong');
select * from LOAIDICHVU;

insert into MUCPHI(MaMP,DonGia,MoTa)
values(N'MP01',10,N'Áp dung tu 1/2015'),
(N'MP02',15,N'Áp dung tu 2/2015'),
(N'MP03',20,N'Áp dung tu 1/2010'),
(N'MP04',25,N'Áp dung tu 2/2011');
select * from MUCPHI;

insert into DONGXE(DongXe,HangXe,SoChoNgoi)
values(N'Hiace',N'Toyota',16),
(N'Vios',N'Toyota',5),
(N'Escape',N'Ford',5),
(N'Cerato',N'KIA',7),
(N'Forte',N'KIA',5),
(N'Starex',N'Huyndai',7),
(N'Grand-i10',N'Huyndai',7);
select * from DONGXE;

insert into DANGKYCUNGCAP(MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values(N'DK001',N'NCC001',N'DV01',N'Hiace',N'MP01','2015-11-20','2016-11-20',4),
(N'DK002',N'NCC002',N'DV02',N'Vios',N'MP02','2015-11-20','2017-11-20',3),
(N'DK003',N'NCC003',N'DV03',N'Escape',N'MP03','2017-11-20','2018-11-20',5),
(N'DK004',N'NCC005',N'DV01',N'Cerato',N'MP04','2015-11-20','2019-11-20',7),
(N'DK005',N'NCC002',N'DV02',N'Forte',N'MP03','2019-11-20','2020-11-20',1),
(N'DK006',N'NCC004',N'DV03',N'Starex',N'MP04','2016-11-10','2021-11-20',2),
(N'DK007',N'NCC005',N'DV01',N'Cerato',N'MP03','2015-11-30','2016-01-25',8),
(N'DK008',N'NCC006',N'DV01',N'Vios',N'MP02','2016-02-28','2016-08-15',9),
(N'DK009',N'NCC005',N'DV03',N'Grand-i10',N'MP02','2016-04-27','2017-04-30',10),
(N'DK010',N'NCC006',N'DV01',N'Forte',N'MP02','2015-11-21','2016-02-22',4),
(N'DK011',N'NCC007',N'DV01',N'Forte',N'MP01','2016-12-25','2017-02-20',5),
(N'DK012',N'NCC007',N'DV03',N'Cerato',N'MP01','2016-04-14','2017-12-20',6),
(N'DK013',N'NCC003',N'DV02',N'Cerato',N'MP01','2015-12-21','2016-12-21',8),
(N'DK014',N'NCC008',N'DV02',N'Cerato',N'MP01','2016-05-20','2016-12-30',1),
(N'DK015',N'NCC003',N'DV01',N'Hiace',N'MP02','2018-04-24','2019-11-20',6),
(N'DK016',N'NCC001',N'DV03',N'Grand-i10',N'MP02','2016-06-22','2016-12-21',8),
(N'DK017',N'NCC002',N'DV03',N'Cerato',N'MP03','2016-09-30','2019-09-30',4),
(N'DK018',N'NCC008',N'DV03',N'Escape',N'MP04','2017-12-13','2018-09-30',2),
(N'DK019',N'NCC003',N'DV03',N'Escape',N'MP03','2016-01-24','2016-12-30',8),
(N'DK020',N'NCC002',N'DV03',N'Cerato',N'MP04','2016-05-03','2017-10-20',7),
(N'DK021',N'NCC006',N'DV01',N'Forte',N'MP02','2015-01-30','2016-12-30',9),
(N'DK022',N'NCC002',N'DV02',N'Cerato',N'MP04','2016-07-25','2017-12-30',6),
(N'DK023',N'NCC002',N'DV01',N'Forte',N'MP03','2017-11-30','2018-05-20',5),
(N'DK024',N'NCC003',N'DV03',N'Forte',N'MP04','2017-12-23','2019-11-30',8),
(N'DK025',N'NCC003',N'DV03',N'Hiace',N'MP02','2016-08-24','2017-10-25',1);
select * from DANGKYCUNGCAP;

-- cau 3
select * from DONGXE where SoChoNGoi > 5;

-- cau 4
select * from NHACUNGCAP where MaNhaCC in
(select MaNhaCC from DANGKYCUNGCAP where DongXe in
(select DongXe from DONGXE where HangXe like 'Toyota') and MaMP in
(select MaMP from MUCPHI where DonGia = 15))
or DongXe in
(select MaNhaCC from DANGKYCUNGCAP where DongXe in
(select DongXe from DONGXE where HangXe like 'KIA') and MaMP in
(select MaMP from MUCPHI where DonGia = 20));
-- cach 2
select distinct b.* from DANGKYCUNGCAP a
inner join NHACUNGCAP b on a.MaNhaCC = b.MaNhaCC
inner join MUCPHI c on a.MaMP = c.MaMP
inner join DONGXE d on a.DongXe = d.DongXe
where (d.HangXe like 'Toyota' and c.DonGia = 15) or
(d.HangXe like 'KIA' and c.DonGia = 20);

-- cau 5
select * from NHACUNGCAP order by TenNhaCC asc, MaSoThue desc;

-- cau 6
select MaNhaCC, count (*) as soluong from DANGKYCUNGCAP where NgayBatDauCungCap >= '2015-11-20' group by MaNhaCC;

-- cau 7
select distinct HangXe from DONGXE;

-- cau 8
select distinct a.MaDKCC,a.MaNhaCC,b.TenNhaCC,b.DiaChi,b.MaSoThue,
e.TenLoaiDV,c.DonGia,d.HangXe,a.NgayBatDauCungCap,a.NgayKetThucCungCap
from DANGKYCUNGCAP a
right join NHACUNGCAP b on a.MaNhaCC = b.MaNhaCC
left join MUCPHI c on a.MaMP = c.MaMP
left join DONGXE d on a.DongXe = d.DongXe
left join LOAIDICHVU e on a.MaLoaiDV = e.MaLoaiDV;

-- cau 9
select * from NHACUNGCAP where MaNhaCC in
(select MaNhaCC from DANGKYCUNGCAP where DongXe in
('Hiace','Cerato'));

-- cau 10
select * from NHACUNGCAP where MaNhaCC not in
(select MaNhaCC from DANGKYCUNGCAP);
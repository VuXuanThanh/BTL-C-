create proc sp_getInforOfFood @MaHD varchar(15)
as
begin
	select CHITIETHOADON.MaMon, TenMon,SoLuong, MONAN.DonGia, GiamGia, ThanhTien
	from CHITIETHOADON inner join HOADON on CHITIETHOADON.MaHD = HOADON.MaHD
	inner join MONAN on MONAN.MaMon = CHITIETHOADON.MaMon
	where HOADON.MaHD=@MaHD
end

exec sp_getInforOfFood '162021_203526'
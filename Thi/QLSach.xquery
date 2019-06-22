(:Câu 2a:)
for $khachhang in doc("QLSach.xml")/QLSach/KhachHang
where year-from-date(xs:date($khachhang/NgaySinh)) = 1980 or year-from-date(xs:date($khachhang/NgaySinh)) = 1981 or year-from-date(xs:date($khachhang/NgaySinh)) = 1982
return <text>{data($khachhang/MaKH)}{" || "}{data($khachhang/HoDemKH)}{data($khachhang/TenKH)}{" || "}{data($khachhang/NgaySinh)}{" || "}{data($khachhang/DiaChi)}{" || "}{data($khachhang/DienThoai)}</text>

(:(:Câu 2b:)
for $Sach in doc("QLSach.xml")/QLSach/Sach
for $LoaiSach in doc("QLSach.xml")/QLSach/LoaiSach
for $ThueSach in doc("QLSach.xml")/QLSach/ThueSach
where $ThueSach/MaSach = $Sach/MaSach and $Sach/MaLoai = $LoaiSach/MaLoai
return <text>{data($LoaiSach/TenLoai)}{" || "}{data($Sach/MaSach)}{" || "}{data($Sach/TenSach)}{" || "}{data($Sach/GiaThue)}</text>
:)
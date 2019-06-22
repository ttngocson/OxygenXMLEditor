(:Câu 1

for $x in doc("QLKS.xml")/QuanLyDatPhong/KhachHang
for $y in doc("QLKS.xml")/QuanLyDatPhong/PhieuDatPhong
for $z in doc("QLKS.xml")/QuanLyDatPhong/ChiTietPhieu
where $x/TenKH='Nam' and $x/MaKH=$y/MaKH and $y/MaPhieu=$z/MaPhieu and $y[contains(normalize-space(),'2012')]
return <text>{"Họ tên: "}{data($x/HoKH)} {" "} {data($x/TenKH)} {". Ngày đặt phòng: "}{data($y/NgayDatPhong)} </text>


(:Câu 2:)

for $x in doc("QLKS.xml")/QuanLyDatPhong/KhachHang
for $y in doc("QLKS.xml")/QuanLyDatPhong/PhieuDatPhong
for $z in doc("QLKS.xml")/QuanLyDatPhong/ChiTietPhieu
where  $x/MaKH=$y/MaKH and $y/MaPhieu=$z/MaPhieu
and $z/ThoiGianO/NgayDen lt $z/ThoiGianO/NgayDi and $z/ThoiGianO/NgayDen lt '2012-02-21' and $z/ThoiGianO/NgayDi ge '2012-02-21'
return <text>{"Họ tên: "}{data($x/HoKH)} {" "} {data($x/TenKH)} {". Mã phòng: "}{data($z/MaPhong)}</text>

:)
(:Câu 3:)

let $ngayden := data(doc("QLKS.xml")/QuanLyDatPhong/ChiTietPhieu/ThoiGianO/NgayDen)[3]
let $ngaydi := data(doc("QLKS.xml")/QuanLyDatPhong/ChiTietPhieu/ThoiGianO/NgayDi)[3]
let $string := xs:string(xs:date($ngaydi) - xs:date($ngayden))
let $string := substring-before($string, "D")
let $string := substring-after($string, "P")
return if($string = "") then(
    let $day := 1
    return $day
    ) else(
    let $day := xs:decimal($string)
    return $day
    )

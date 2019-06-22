(:(:Cau 2a:)
for $Doi in doc ("QLGBL1.xml")/DT/DSDT/DoiTuyen
for $VDV in doc ("QLGBL1.xml")/DT/DSDT/VanDongVien
for $giaithuong in doc ("QLGBL1.xml")/DT/DSDT/GiaiThuong
for $NoiDung in doc ("QLGBL1.xml")/DT/DSDT/NoiDungThi
for $HuyChuong in doc ("QLGBL1.xml")/DT/DSDT/HuyChuong
where $Doi/TenDoiTuyen = "Bình Định" and $Doi/MaDoiTuyen = $VDV/MaDoiTuyen
        and $VDV/MaVDV = $giaithuong/MaVDV and $NoiDung/MaNoiDung = $giaithuong/MaNoiDung
        and $giaithuong/MaHuyChuong = $HuyChuong/MaHuyChuong
return <text>{data($Doi/MaDoiTuyen)}{" || "}{data($Doi/TenDoiTuyen)}{" || "}
                {data($VDV/HoVDV)}{" "}{data($VDV/TenVDV)}{" || "}
                {data($NoiDung/TenNoiDung)}{" || "} {data($HuyChuong/TenHuyChuong)}</text>
:)
(:(:Cau 2b:)
for $HuyChuong in doc ("QLGBL1.xml")/DT/DSDT/HuyChuong
for $VDV in doc ("QLGBL1.xml")/DT/DSDT/VanDongVien
for $giaithuong in doc ("QLGBL1.xml")/DT/DSDT/GiaiThuong
where $giaithuong/MaHuyChuong = "V" and $giaithuong/MaHuyChuong = $HuyChuong/MaHuyChuong
      and $giaithuong/MaVDV = $VDV/MaVDV
return <text>{data($VDV/HoVDV)}{" "}{data($VDV/TenVDV)}</text>
:)
(:Cau 2c:)
for $Doi in doc ("QLGBL1.xml")/DT/DSDT/DoiTuyen
for $HuyChuong in doc ("QLGBL1.xml")/DT/DSDT/HuyChuong
for $VDV in doc ("QLGBL1.xml")/DT/DSDT/VanDongVien
for $giaithuong in doc ("QLGBL1.xml")/DT/DSDT/GiaiThuong
where $Doi/TenDoiTuyen = "Khánh Hòa" and $Doi/MaDoiTuyen = $VDV/MaDoiTuyen
        and $VDV/MaVDV = $giaithuong/MaVDV and $giaithuong/MaHuyChuong = $HuyChuong/MaHuyChuong
return <text>{data($VDV/MaVDV)}{" || "}{data($VDV/HoVDV)}{" "}{data($VDV/TenVDV)}{" || "}{data($HuyChuong/TienThuong)}</text>

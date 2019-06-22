<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Quản lý khách sạn</title>
            </head>
            <body>
                <h1 align="center" font-size="34dp">Bài kiểm tra</h1>
                <h3 align="center" style="color:red">Trần Trương Ngọc Sơn</h3>
                <xsl:for-each select="/QuanLyDatPhong/KhachHang">
                    <xsl:variable name="KH" select="."/>
                    <h3 align="center" style="color:blue">
                        <xsl:value-of select="HoKH"/>
                        <xsl:value-of select="TenKH"/>
                    </h3>
                    <table border="1" align="center">
                        <th>Mã phiếu</th>
                        <th>Mã phòng</th>
                        <th>Ngày đến</th>
                        <th>Ngày đi</th>
                        <th>Đơn giá</th>
                        <th>Tiền trả</th>
                        <xsl:for-each select="/QuanLyDatPhong/PhieuDatPhong">
                            <xsl:variable name="Phieu" select="."/>
                            <xsl:for-each select="/QuanLyDatPhong/ChiTietPhieu">
                                <xsl:variable name="CTPhieu" select="."/>
                                <xsl:if test="$KH/MaKH = $Phieu/MaKH and $Phieu/MaPhieu = $CTPhieu/MaPhieu">
                                    <tr align="center">
                                        <td>
                                            <xsl:value-of select="$Phieu/MaPhieu"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="$CTPhieu/MaPhong"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="$CTPhieu/ThoiGianO/NgayDen"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="$CTPhieu/ThoiGianO/NgayDi"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="$CTPhieu/DonGIa"/>
                                        </td>
                                        <td>
                                            <script type="text/javascript">
                                                document.write("Hello World!");
                                            </script>
                                        </td>
                                    </tr>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <h1 align="center" style="color:red">Bài thi</h1>
            <h3 align="center" style="color:blue" >Trần Trương Ngọc Sơn</h3>
            <body>
                <xsl:for-each select="/DT/DSDT/VanDongVien">
                    <xsl:variable name="VDV" select="."/>
                    <h3 align="center" style="color:green">
                        <xsl:value-of select="MaVDV"/> &#160;
                        <xsl:value-of select="HoVDV"/> &#160;
                        <xsl:value-of select="TenVDV"/> &#160;
                    </h3> 
                    <table border="1" align="center">
                        <th>Mã Vận Động Viên</th>
                        <th>Mã Nội Dung Thi</th>
                        <th>Thành Tích Đạt Được (Tính bằng giây)</th>
                        <th>Mã Huy Chương</th>
                        <th>Tên Huy Chương</th>
                        <th>Tiền Thưởng</th>
                        <xsl:for-each select="/DT/DSDT/GiaiThuong">
                            <xsl:variable name="GT" select="."/>
                            <xsl:for-each select="/DT/DSDT/HuyChuong">
                                <xsl:variable name="HC" select="."/>
                                <xsl:if test="$GT/MaHuyChuong = $HC/MaHuyChuong and $GT/MaVDV = $VDV/MaVDV">
                                    <tr align="center">
                                        <td><xsl:value-of select="$GT/MaVDV"/></td>
                                        <td><xsl:value-of select="$GT/MaNoiDung"/></td>
                                        <td><xsl:value-of select="$GT/ThanhTich"/></td>
                                        <td><xsl:value-of select="$HC/MaHuyChuong"/></td>
                                        <td><xsl:value-of select="$HC/TenHuyChuong"/></td>
                                        <td><xsl:value-of select="$HC/TienThuong"/></td>
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
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Quản lý sách</title>
            </head>
            <body>
                <h1 align="center" style="color:red">Quản lý sách</h1>
                <h3 align="center" style="color:blue">Trần Trương Ngọc Sơn</h3>
                <xsl:for-each select="/QLSach/KhachHang">
                    <xsl:variable name="KH" select="."/>
                    <h3 align="center" style="color:blue">
                        <xsl:value-of select="HoDemKH"/>
                        <xsl:value-of select="TenKH"/>
                    </h3>
                    <table border="1" align="center">
                        <th>Mã Sách</th>
                        <th>Ngày thuê</th>
                        <th>Ngày trả</th>
                        <th>Tiền trả</th>
                        <xsl:for-each select="/QLSach/ThueSach">
                            <xsl:variable name="TS" select="."/>
                            <xsl:if test="$TS/MaKH = $KH/MaKH">
                                <tr align="center">
                                    <td><xsl:value-of select="$TS/MaSach"/></td>
                                    <td><xsl:value-of select="$TS/NgayThue"/></td>
                                    <td><xsl:value-of select="$TS/NgayTra"/></td>
                                    <td>0</td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
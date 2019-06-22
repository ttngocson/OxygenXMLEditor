<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <td>STT</td>
                        <td>MaSV</td>
                        <td>TenSV</td>
                        <td>GioiTinh</td>
                        <td>NgaySinh</td>
                        <td>MaLop</td>
                    </tr>
                    
                    <xsl:for-each select="QLSINHVIEN/SINHVIEN">
                        <xsl:sort select="TENSV"/>
                        <tr>
                            <td><xsl:value-of select="position()"/></td>
                            <td><xsl:value-of select="MASV"/></td>
                            <td><xsl:value-of select="TENSV"/></td>
                            <td><xsl:value-of select="GIOITINH"/></td>
                            <td><xsl:value-of select="NGAYSINH"/></td>
                            <td><xsl:value-of select="MALOP"/></td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
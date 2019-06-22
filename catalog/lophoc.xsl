<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <td>Mã lớp</td>
                        <td>Tên lớp</td>
                    </tr>
                    <xsl:for-each select="dslop/lophoc">
                        <tr>
                            <td><xsl:value-of select="malop"/></td>
                            <td><xsl:value-of select="tenlop"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
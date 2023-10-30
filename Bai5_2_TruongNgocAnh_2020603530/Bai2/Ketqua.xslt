<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt" 
				xmlns:a="http://tempuri.org/ketqua.xsd"
				exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
		<html>
			<body>
				<table border="1" cellpadding="1">
					<tr>
						<td>MaSV</td>
						<td>TenSV</td>
						<td>Diem Thi</td>
					</tr>
					<xsl:for-each select="a:DiemThi/a:KetQua[a:Mamh='THVP' and a:Diemthi >= 5]">
						<tr>
							<td>
								<xsl:value-of select="a:Masv"/>
							</td>
							<td>
								<xsl:value-of select="a:Mamh"/>
							</td>
							<td>
								<xsl:value-of select="a:Diemthi"/>
							</td>
						</tr>
						
					</xsl:for-each>
				</table>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>

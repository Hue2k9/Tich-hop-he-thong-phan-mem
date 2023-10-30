<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt" 
				xmlns:a="http://tempuri.org/XMLSchema1.xsd"
				exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
		<html>
			<head>
				<title>Danh sach sinh vien</title>
			</head>
			<body>
				<table border="1" cellpadding="1">
					<tr>
						<td>STT</td>
						<td>MaSV</td>
						<td>TenSV</td>
						<td>Gioi Tinh</td>
						<td>Ngay Sinh</td>
						<td>Ma Lop</td>
					</tr>
					<xsl:for-each select="a:QLSV/a:SinhVien">
						<tr>
							<td>
								<xsl:value-of select="position()"/>
							</td>
							<td>
								<xsl:value-of select="a:MaSV"/>
							</td>
							<td>
								<xsl:value-of select="a:TenSV"/>
							</td>
							<td>
								<xsl:value-of select="a:GioiTinh"/>
							</td>
							<td>
								<xsl:value-of select="a:NgaySinh"/>
							</td>
							<td>
								<xsl:value-of select="a:MaLop"/>
							</td>
						</tr>
					</xsl:for-each>
					
				</table>
				
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>

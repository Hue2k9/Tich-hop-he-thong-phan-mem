<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
		<html>
			<head>
				<title></title>
			</head>
			<body>
				
				<br></br>
				<table border="1">
					<tr>
						<td>
							<h1>Danh sach dang ky nghi</h1>
						</td>
					</tr>
					<tr>
						<th>
							<td>STT</td>
							<td>Ma nhan vien</td>
							<td>Ly do</td>
							<td>Don vi</td>
							<td>Trang thai</td>
							<td>Ghi chu</td>
						</th>
					</tr>
					<xsl:for-each select="DangKyNghi">
						<tr>
							
							<td>
								<xsl:value-of select="NgayLamViec/@NgayLamViec"/>
							</td>
						</tr>
						<xsl:for-each select="DangKyNhi/NgayLamViec/NhanVien">
							<tr>
								<td>
									<xsl:value-of select="position()"/>
								</td>
								<td>
									<xsl:value-of select="@MaNV"/>
									<xsl:value-of select="LyDo"/>
									<xsl:value-of select="DonVi"/>
									<xsl:value-of select="TrangThai"/>
								</td>
							</tr>
						</xsl:for-each>
					</xsl:for-each>
				</table>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>

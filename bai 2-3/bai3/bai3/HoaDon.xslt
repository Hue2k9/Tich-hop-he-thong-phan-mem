<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
		<html>
			<head>
				<title>Danh sach hang hoa</title>
			</head>
			<body>
				<h1>Phieu mua hang</h1>
				<br></br>
				<table border="0">
					<tr>
						<td>Hoa don: <xsl:value-of select="DS/HoaDon/MaHD"/>
					</td>
						<td>
							Ngay ban: <xsl:value-of select="DS/HoaDon/NgayBan"/>
						</td>
					</tr>
					<tr>
						<td>Loai hang: <xsl:value-of select="DS/HoaDon/LoaiHang/@TenLoai"/>
					</td>
						<td></td>
					</tr>
				</table>
				<table border="1" cellpadding="1">
					<tr>
						<td>Ma hang</td>
						<td>Ten hang</td>
						<td>So luong</td>
						<td>Don gia</td>
						<td>Thanh tien</td>
					</tr>
					<xsl:for-each select="DS/HoaDon/LoaiHang/Hang">
						<tr>
							<td>
								<xsl:value-of select="@MaHang"/>
								<xsl:value-of select=""
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>

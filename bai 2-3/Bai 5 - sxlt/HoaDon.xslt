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
				<xsl:for-each select="DS/HoaDon">
				<h1>PHIEU MUA HANG</h1>
				<br></br>
				<table border="0">
					<tr>
						<td>Hoa don: <xsl:value-of select="MaHD"/>
					</td>
						<td>Ngay ban: <xsl:value-of select="NgayBan"/>
					</td>
					</tr>
					<tr>
						<td>Loai hang: <xsl:value-of select="LoaiHang/TenLoai"/>
					</td>
					</tr>
				</table>
				<table border="1" cellpadding="1">
					<tr>
						<td>STT</td>
						<td>Ma hang</td>
						<td>Ten hang</td>
						<td>So luong</td>
						<td>Don vi tinh</td>
						<td>Don gia</td>
						<td>Thanh tien</td>
					</tr>
					<xsl:for-each select="LoaiHang/Hang">
						<tr>
							<td>
								<xsl:value-of select="position()"/>
							</td>
							<td>
								<xsl:value-of select="@MaHang"/>
							</td>
							<td>
								<xsl:value-of select="TenHang"/>
							</td>
							<td>
								<xsl:value-of select="SoLuong"/>
							</td>
							<td>
								<xsl:value-of select="DonViTinh"/>
							</td>
							<td>
								<xsl:value-of select="DonGia"/>
							</td>
							<td>
								<xsl:value-of select="SoLuong*DonGia"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				</xsl:for-each>
				</body>
		</html>
    </xsl:template>
</xsl:stylesheet>

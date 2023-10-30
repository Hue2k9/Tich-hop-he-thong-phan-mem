<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
	xmlns:bn="http://tempuri.org/cau1.xsd"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
		<html>
			<head>
				
			</head>
			<body>
				<div class="head" style="display: flex;">
					<p>TRUONG DHCNHN</p>
					<p>DANH MUC SACH</p>
				</div>
				<table border="1" cellpadding="1">
					<xsl:for-each select="bn:ThuVien/bn:LoaiSach">
						<tr>
							<td>Ma loai: 
								<xsl:value-of select="@MaLoai"/>
							</td>
							<td>
								Loai sach: 
								<xsl:value-of select="bn:TenLoai"/>
							</td>
						</tr>
						<tr>
							<th>Ma sach</th>
							<th>Ten sach</th>
							<th>Tac gia</th>
							<th>So trang</th>
							<th>Gia</th>
						</tr>
						<xsl:for-each select="bn:Sach">
							<tr>
								<td>
									<xsl:value-of select="@MaSach"/>
								</td>
								<td>
									<xsl:value-of select="bn:ThongTin/bn:TenSach"/>
								</td>
								<td>
									<xsl:value-of select="bn:ThongTin/bn:TacGia"/>
								</td>
								<td>
									<xsl:value-of select="bn:SoTrang"/>
								</td>
								<td>
									<xsl:value-of select="bn:SoTrang*2500"/>
								</td>
							</tr>
							<br></br>
						</xsl:for-each>
					</xsl:for-each>
				</table>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>

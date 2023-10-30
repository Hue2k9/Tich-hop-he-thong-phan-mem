<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:bn="http://tempuri.org/cau2.xsd"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
		<html>
			<body>
				<table border="1" cellpadding="1">
					<tr>
						<td>
							<b>Danh sach dang ky nghi</b>
						</td>
					</tr>
					<br></br>
					<xsl:for-each select="bn:DangKyNghi/bn:NgayLamViec">
						<tr>
							<td>Ngay lam viec</td>
							<td>
								<xsl:value-of select="@Ngay"/>
							</td>
							<tr>
								<td>STT</td>
								<td>Ma nhan vien</td>
								<td>Ly do</td>
								<td>Don vi</td>
								<td>Trang thai</td>
								<td>Ghi chu</td>
							</tr>
						</tr>

							<xsl:for-each select="bn:NhanVien">
								<tr>
									<td>
										<xsl:value-of select="position()"/>
									</td>
									<td>
										<xsl:value-of select="@MaNV"/>
									</td>
									<td>
										<xsl:value-of select="bn:LyDo"/>
									</td>
									<td>
										<xsl:value-of select="bn:DonVi"/>
									</td>
									<td>
										<xsl:value-of select="bn:TrangThai"/>
									</td>
									<td>
										<xsl:if test="bn:DonVi = 0.5">
											Nghi nua ngay
										</xsl:if>
									</td>
								</tr>
							</xsl:for-each>
					
					</xsl:for-each>
				</table>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>

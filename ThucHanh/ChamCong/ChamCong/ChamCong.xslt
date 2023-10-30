<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
				xmlns:bn="http://tempuri.org/ChamCong.xsd"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
		<html>
			<h2 align="center"> BẢNG CHẤM CÔNG</h2>
			<xsl:for-each select="bn:ChamCong/bn:NgayLamViec">
				<table border="0">
					<tr>
						<td>Ngày làm việc:</td>
						<td>
							<xsl:value-of select="@Ngay"/>
						</td>
					</tr>
				</table>
				<table border="1" cellpadding="3">
					<tr bgcolor="pink">
						<td>STT</td>
						<td>Mã NV</td>
						<td>Ca làm việc</td>
						<td> Giowf vào</td>
						<td>Giwof ra</td>
						<td>Làm đêm</td>
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
								<xsl:value-of select="bn:CaLamViec"/>
							</td>
							<td>
								<xsl:value-of select="bn:GioVao"/>
							</td>
							<td>
								<xsl:value-of select="bn:GioRa"/>
							</td>
							<td>
								<xsl:if test="bn:CaLamViec = 'C3' ">
									X
								</xsl:if>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</xsl:for-each>
		</html>
    </xsl:template>
</xsl:stylesheet>

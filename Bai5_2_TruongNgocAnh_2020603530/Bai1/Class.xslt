<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt" 
				xmlns:a="http://tempuri.org/Subject.xsd"
				exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
		<html>
			<body>
				<table border="none" cellpadding="1">
					<tr>
						<td>Ma lop</td>
						<td>Ten lop</td>
						<td>So gio</td>
					</tr>
					<xsl:for-each select="a:QLMH/a:Subject">
						<xsl:if test="a:Sogio>40">
						<tr>
							<td>
								<xsl:value-of select="a:Mamon"/>
							</td>
							<td>
								<xsl:value-of select="a:Tenmon"/>
							</td>
							<td>
								<xsl:value-of select="a:Sogio"/>
							</td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>

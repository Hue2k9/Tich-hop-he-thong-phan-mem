<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@* | node()">
		<html>
			<body>
				<h2>Students</h2>
				<table border="1"></table>
					<tr bgcolor="blue">
						<th>RollNo</th>
						<th>First Name</th>
						<th>last name</th>
						<th>nick name</th>
						<th>marks</th>
					</tr>
				<xsl:for-each select="class/student">
					<xsl:sort select="marks"/>
					<tr>
						<td>
							<xsl:value-of select="@rollno"/>
						</td>
						<td>
							<xsl:value-of select="firstname"/>
						</td>
						<td>
							<xsl:value-of select="lastname"/>
						</td>
						<td>
							<xsl:value-of select="nickname"/>
						</td>
						<td>
							<xsl:value-of select="mark"/>
						</td>
					</tr>
				</xsl:for-each>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>

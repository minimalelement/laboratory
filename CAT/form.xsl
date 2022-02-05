<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">

		<html>
		<head>
		</head>
		<body>
		<h1 style="text-align:center">User Details</h1>
		<table border="2" align="center">
		<tr>
		<th>Name</th>
		<th>University</th>
		<th>Phone</th>
		<th>Email</th>
		</tr>
		<xsl:for-each select="CHRIST/COMPUTER-SCIENCE">
		<xsl:sort select="U_email"></xsl:sort>
		
		<tr>
		<td>
		<xsl:value-of select="STU-NAME"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="STU-UNIVERSITY"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="STU-PHONE"></xsl:value-of>
        </td>
		<td>
		<xsl:value-of select="STU-EMAIL"></xsl:value-of>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
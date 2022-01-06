<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
		<h1 style="text-align:center">Laboratory Management</h1>
		<table border="2" align="center">
		<tr>
		<th>EMP_name</th>
		<th>EMP_experience</th>
		<th>EMP_address</th>
		<th>EMP_phone</th>
		<th>Salary</th>
		</tr>
		<xsl:for-each select="ChristUniversity/Faculty">
		<xsl:sort select="EMP_name"></xsl:sort>
		<xsl:if test="Salary &gt; 25000">
		<tr>
		<td>
		<xsl:value-of select="EMP_name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="EMP_experience"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="EMP_address"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="EMP_phone"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Salary"></xsl:value-of>
		</td>
		</tr>
		</xsl:if>
		</xsl:for-each>
		</table>
		
		<table border="2" align="right">
		<tr>
		<th>Collection_mode</th>
		<th>Sample_type</th>
		<th>Patient_id</th>
		<th>Date</th>
		<th>Test_price</th>
		</tr>
		<xsl:for-each select="ChristUniversity/Sample">
		<xsl:sort select="Patient_id"></xsl:sort>
		<xsl:sort select="Sample_type"></xsl:sort>
		<xsl:if test="Test_price &gt; 5000">
		<tr>
		<td>
		<xsl:value-of select="Collection_mode"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Sample_type"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Patient_id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Date"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Test_price"></xsl:value-of>
		</td>
		</tr>
		</xsl:if>
		</xsl:for-each>
		</table>
		
		<table border="2" align="right">
		<h2 style="text-align:center">Lab Equipment</h2>
		<tr>
		<th>Equipment_id</th>
		<th>Equipment_validity</th>
		</tr>
		<xsl:for-each select="ChristUniversity/Lab_equipment">
		<xsl:sort select="Equipment_id"></xsl:sort>
		<xsl:sort select="Equipment_validity"></xsl:sort>
		<tr>
		<td>
		<xsl:value-of select="Equipment_id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Equipment_validity"></xsl:value-of>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
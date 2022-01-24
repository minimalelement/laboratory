<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
		
		<h1 style="text-align:center">Laboratory Management System</h1>
		
		<h2 style="text-align:center">Lab Employee</h2>
		<table border="2" align="center">
		<tr>
		<th>EMP_name</th>
		<th>EMP_experience</th>
		<th>EMP_address</th>
		<th>EMP_phone</th>
		<th>Salary</th>
		</tr>
		<xsl:for-each select="ChristUniversity/Faculty">
		<xsl:sort select="EMP_Name"></xsl:sort>
		<xsl:if test="Salary &gt; 25000">
		<tr>
		<td>
		<xsl:value-of select="EMP_Name"></xsl:value-of>
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
		
		<h2 style="text-align:center">Sample</h2>
		<table border="2" align="center">
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
		
		<h2 style="text-align:center">Lab Equipment</h2>
		<table border="2" align="center">
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
		
		<h2 style="text-align:center">Test</h2>
		<table border="2" align="center">
		<tr>
		<th>Test_type</th>
		<th>Test_name</th>
		<th>Test_id</th>
		<th>Test_validity</th>
		<th>Test_Price</th>
		</tr>
		<xsl:for-each select="ChristUniversity/Test">
		<tr>
		<td>
		<xsl:value-of select="Test_type"></xsl:value-of>
		<xsl:choose>
			<xsl:when test="Test_Price &gt; 8000">
				<td><xsl:value-of select="Test_name"></xsl:value-of></td>
				<td><xsl:value-of select="Test_id"></xsl:value-of></td>
			</xsl:when>
			<xsl:otherwise>
				<td><xsl:value-of select="Test_name"></xsl:value-of></td>
				<td><xsl:value-of select="Test_id"></xsl:value-of></td>
			</xsl:otherwise>
		</xsl:choose>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		
		<h2 style="text-align:center">Prescription</h2>
		<table border="2" align="center">
		<tr>
		<th>Patient_name</th>
		<th>Patient_id</th>
		<th>Pre_date</th>
		<th>Test_id</th>
		<th>Patient_age</th>
		<th>Doctor_id</th>
		</tr>
		<xsl:for-each select="ChristUniversity/Prescription">
		<xsl:sort select="Patient_id"></xsl:sort>
		<xsl:sort select="Patient_name"></xsl:sort>
		<xsl:if test="Patient_age &gt; 15">
		<tr>
		<td>
		<xsl:value-of select="Patient_name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Patient_id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Pre_date"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Test_id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Patient_age"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Doctor_id"></xsl:value-of>
		</td>
		</tr>
		</xsl:if>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

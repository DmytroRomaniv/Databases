<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/public">
	<html>
		<body>
			<h1>XSLT</h1>
			<table border="1">
				<tr>
					<th>Id</th>
					<th>Adress</th>
					<th>Building Number</th>
				</tr>
				<xsl:for-each select="building">
				<tr>
					<td><xsl:value-of select="id"/></td>
					<td><xsl:value-of select="adress"/></td>
					<td><xsl:value-of select="buildingnumber"/></td>
				</tr>
				</xsl:for-each>
			</table>
			<br/>
			<table border="1">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Status</th>
				</tr>
				<xsl:for-each select="equipment">
					<xsl:if test="status='Good'">
					<tr>
						<td><xsl:value-of select="id"/></td>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="status"/></td>
					</tr>
					</xsl:if>
				</xsl:for-each>
			</table>
			<br/>
			<table border="1">
				<tr>
					<th>Id</th>
					<th>WorkerId</th>
					<th>Movement</th>
				</tr>
				<xsl:for-each select="rfid">
				<xsl:sort select="workerid"/>
					<tr>
						<td><xsl:value-of select="id"/></td>
						<td><xsl:value-of select="workerid"/></td>
						<td><xsl:value-of select="movement"/></td>
					</tr>
				</xsl:for-each>
			</table>
			<br/>
			<table border="1">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Phonenumber</th>
				</tr>
				<xsl:for-each select="worker">
					<tr>
						<td><xsl:value-of select="id"/></td>
						<td><xsl:value-of select="firstname"/> <xsl:value-of select="lastname"/></td>
						<td><xsl:value-of select="phonenumber"/></td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
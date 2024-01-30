<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Mon Jan 08 18:10:51 WET 2024 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<html>
			<body>
				<h2  style="background-color:black;color:white">Mayo</h2>
				<xsl:for-each select="escuelasdeidiomas/escuela/idioma[nivel/examen[contains(text(),'Mayo')]]">
					<table border="1">
						<tr>
							<th colspan="4" style="background-color:red; color:white">
								<xsl:value-of select="@codigo"/>
							</th>
						</tr>
						<tr>
							<th style="background-color:orange; color:white">Nivel</th>
							<th style="background-color:orange; color:white">Modalidad</th>
							<th style="background-color:orange; color:white">Lugar</th>
							<th style="background-color:orange; color:white">Fecha</th>
						</tr>
						<xsl:for-each select="nivel/examen[contains(text(),'Mayo')]">
						<xsl:sort select="substring(text(), 0, 3)" data-type="number"/>
							<tr style="background-color:cyan; color:black">
								<th>
									<xsl:value-of select="../@certificacion"/>
								</th>
								<th>
									<xsl:value-of select="@tipo"/>
								</th>
								<th>
									<xsl:value-of select="../../../@sede"/>
								</th>
								<th>
									<xsl:value-of select="text()"/>
								</th>
							</tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>
				
				
				
				
				
				<h2  style="background-color:black;color:white">Junio</h2>
				<xsl:for-each select="escuelasdeidiomas/escuela/idioma[nivel/examen[contains(text(),'Junio')]]">
					<table border="1">
						<tr>
							<th colspan="4" style="background-color:red; color:white">
								<xsl:value-of select="@codigo"/>
							</th>
						</tr>
						<tr>
							<th style="background-color:orange; color:white">Nivel</th>
							<th style="background-color:orange; color:white">Modalidad</th>
							<th style="background-color:orange; color:white">Lugar</th>
							<th style="background-color:orange; color:white">Fecha</th>
						</tr>
						<xsl:for-each select="nivel/examen[contains(text(),'Junio')]">
						<xsl:sort select="substring(text(), 0, 3)" data-type="number"/>
							<tr style="background-color:cyan; color:black">
								<th>
									<xsl:value-of select="../@certificacion"/>
								</th>
								<th>
									<xsl:value-of select="@tipo"/>
								</th>
								<th>
									<xsl:value-of select="../../../@sede"/>
								</th>
								<th>
									<xsl:value-of select="text()"/>
								</th>
							</tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

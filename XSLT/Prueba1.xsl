<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Mis Cds</h2>
				<table>
					<tr>
						<th>Artista</th>
						<th>Titulo</th>
					</tr>
					<xsl:for-each select="//cd">
					<tr>
					<td><xsl:value-of select="titulo"/></td>
					<td><xsl:value-of select="artista"/></td>
					</tr>
					</xsl:for-each>
					
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

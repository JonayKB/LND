<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Tue Dec 12 16:13:11 WET 2023 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">
		<reporteros>
		<xsl:apply-templates select="Category/Feed/item"/>
		</reporteros>
	</xsl:template>
	
	<xsl:template match="item">

	<xsl:element name ="reportero">
	
		<nombre><xsl:value-of select="author"/></nombre>
		<noticia><xsl:value-of select="title"/></noticia>
		<fecha><xsl:value-of select="pubDate"/></fecha>
	</xsl:element>

	</xsl:template>
</xsl:stylesheet>



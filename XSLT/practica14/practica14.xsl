<?xml version="1.0" encoding="UTF-8" ?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Mon Dec 18 18:07:24 WET 2023 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">
	<noticias>
	
		<xsl:apply-templates select="Category/Feed/item"/>
	</noticias>
	</xsl:template>
	
	<xsl:template match="item">
	<noticia>
	
	<xsl:attribute name = "autor">
		<xsl:value-of select="author"/>
	</xsl:attribute>
	<xsl:attribute name = "fecha">
		<xsl:value-of select="pubDate"/>
	</xsl:attribute>
	<xsl:value-of select= "title"/>
	</noticia>
	</xsl:template>
</xsl:stylesheet>



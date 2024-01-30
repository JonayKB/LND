<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/> 
<xsl:template match="/">
<html>
<body>
<xsl:apply-templates select="/instituto/curso"/>
</body>
</html>
</xsl:template>


<xsl:template match="curso">
<table border="1" width="70%" >
<tr>
<th colspan="3" align="left" style="background-color:blue; color:white" ><xsl:value-of select="@nombre"></xsl:value-of></th>
</tr>
<tr>
<th style="background-color:#ffbfaa" >Cial</th>
<th style="background-color:#ffbfaa">Nombres</th>
<th style="background-color:#ffbfaa">Apellidos</th>
</tr>
<xsl:for-each select="//alumno">
<tr>
<td style="background-color:green; color:white" ><xsl:value-of select="@cial"></xsl:value-of></td>
<td><xsl:value-of select="nombre"></xsl:value-of></td>
<td><xsl:value-of select="apellidos"></xsl:value-of></td>
</tr>
</xsl:for-each>
</table>
</xsl:template>


</xsl:stylesheet>


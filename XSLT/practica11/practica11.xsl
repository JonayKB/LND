<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/> 
<xsl:template match="/">
<html>
<body>
<h1>Lista de nombres y apellidos</h1>
<table border="1" width="70%">
<tr>
<th>Nombres</th>
<th>Apellidos</th>
</tr>
<xsl:for-each select="//alumno">
<tr>
<td><xsl:value-of select="nombre"></xsl:value-of></td>
<td><xsl:value-of select="apellidos"></xsl:value-of></td>
</tr>
</xsl:for-each>
</table>
<h1>Lista de Ciales y Cursos</h1>
<table border="1" width="70%">
<tr>
<th>Ciales</th>
<th>Curso</th>
</tr>
<xsl:for-each select="//alumno">
<tr>
<td><xsl:value-of select="@cial"></xsl:value-of></td>
<td><xsl:value-of select="../@nombre"></xsl:value-of></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>


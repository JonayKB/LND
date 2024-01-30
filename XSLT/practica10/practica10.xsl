<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/> 
<xsl:template match="/">
<html>
<body>
<table border="1" width="70%">
<xsl:apply-templates select="/Category/Feed/item"/>
</table>
</body>
</html>
</xsl:template>

<xsl:template match= "item">
<tr>

<th><xsl:value-of select ="title"/></th>
</tr>

</xsl:template>
</xsl:stylesheet>


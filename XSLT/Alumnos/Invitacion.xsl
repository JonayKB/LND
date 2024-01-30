<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/><!--Crearemos un fichero XML-->
<xsl:template match="/"><!--Primera plantilla: se aplica al elemento raíz-->
<cartas> <!--nuestro nuevo elemento raíz es la etiqueta ciales -->
<xsl:apply-templates select="/instituto/curso/alumno[apellidos[contains(text(),'Pérez')]]"/>
</cartas>
</xsl:template> <!-- fin de la primera plantilla -->
<xsl:template match="alumno">
<invitacion>
<destinatario><xsl:value-of select="nombre"/> <xsl:text> - </xsl:text>
<xsl:value-of select="apellidos"/></destinatario>
<evento><xsl:value-of select="../@nombre"></xsl:value-of> </evento>

</invitacion>
</xsl:template> 
</xsl:stylesheet>

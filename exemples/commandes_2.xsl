<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : commandes.xsl
    Created on : 3 avril 2017, 14:02
    Author     : mvarinard
    Description:
        Exclu la commande si on détecte un client spécifique au niveau de la commande avec le webservice universel E-connecteur.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
        <xsl:if test="email != 'testeureeee@hotmail.com'">
            <xsl:element name="no_import" />
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>


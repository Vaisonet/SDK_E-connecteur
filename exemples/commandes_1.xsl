<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : commandes.xsl
    Created on : 3 avril 2017, 14:02
    Author     : mvarinard
    Description:
        Force le code_erp si on détecte un client spécifique au niveau de la commande avec le webservice universel E-connecteur.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="/connecteur/order/client">
        <xsl:copy>
            <xsl:apply-templates/>
            <xsl:if test="email = 'testeur@hotmail.com'">
                <xsl:element name="code_erp">ABCD</xsl:element>
            </xsl:if>
        </xsl:copy>
    </xsl:template>  

</xsl:stylesheet>


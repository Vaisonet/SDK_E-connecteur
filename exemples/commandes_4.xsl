<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : commandes.xsl
    Created on : 3 avril 2017, 14:02
    Author     : mvarinard
    Description:
        Autre exemple de filtre de commande basé sur les emails
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:variable name= "mesemails">testur@hotmail.com|testeur@hotmail.com</xsl:variable>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>

        <xsl:if test="contains(email, '@')">
            <xsl:if test="contains($mesemails, email)">
                <xsl:element name="no_import" />
            </xsl:if>
        </xsl:if>
           
    </xsl:template>

</xsl:stylesheet>


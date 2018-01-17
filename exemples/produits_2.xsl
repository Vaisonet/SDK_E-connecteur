<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : produits_2.xsl
    Created on : 19/10/2017
    Author     : mvarinard
    Description:
        Copie le noeud name > language dans le noeud supplier_reference
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:variable name= "supref" select="/prestashop/product/name/language[@id = '2']"/>
    <xsl:template match="/prestashop/product/supplier_reference">
        <supplier_reference><xsl:value-of select="$supref"/></supplier_reference>
    </xsl:template>
    
</xsl:stylesheet>


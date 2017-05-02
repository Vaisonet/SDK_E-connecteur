<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : commandes.xsl
    Created on : 3 avril 2017, 14:02
    Author     : mvarinard
    Description:
        Force le code client par un code générique et vide les informations clients sur le webservice universel Vaisonet / E-connecteur
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
                <xsl:element name="code_erp">ABCD</xsl:element>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="/connecteur/order/facturation/pays">
        <pays />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/facturation/lastname">
        <lastname />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/facturation/firstname">
        <firstname />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/facturation/address1">
        <address1 />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/facturation/address2">
        <address2 />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/facturation/postcode">
        <postcode />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/facturation/city">
        <city />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/facturation/phone">
        <phone />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/facturation/company">
        <company />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/facturation/phone_mobile">
        <phone_mobile />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/livraison/company">
        <company />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/livraison/phone_mobile">
        <phone_mobile />
    </xsl:template>

    <xsl:template match="/connecteur/order/livraison/pays">
        <pays />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/livraison/lastname">
        <lastname />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/livraison/firstname">
        <firstname />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/livraison/address1">
        <address1 />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/livraison/address2">
        <address2 />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/livraison/postcode">
        <postcode />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/livraison/city">
        <city />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/livraison/phone">
        <phone />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/client/lastname">
        <lastname />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/client/firstname">
        <firstname />
    </xsl:template>
    
    <xsl:template match="/connecteur/order/client/email">
        <email />
    </xsl:template>
    
</xsl:stylesheet>


<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : produits_3.xsl
    Created on : 17/01/2018
    Author     : mvarinard
    Description:
        Si dans Prestashop, on rajoute un noeud non standard qui serait en lecture seule, alors une mise à jour ou une création produit ne serait plus possible par E-connecteur.
        Deux solutions :
         1) Permettre l'écriture sur ce champ, E-connecteur ne le connaissant pas, il ne serait jamais modifié
         2) Supprimer le noeud du fichier XML lors de l'envoi sur Prestashop. C'est cette solution qui est utilisée dans cet XSL.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="prestashop/product/price_product_base" />
    
</xsl:stylesheet>


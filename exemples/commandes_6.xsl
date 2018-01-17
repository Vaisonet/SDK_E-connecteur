<?xml version="1.0" encoding="UTF-8"?>

<!--
    Description:
        On renomme le node XML product_quantity_erp en product_quantity dans tous les nodes order_row de Prestashop
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>       
    </xsl:template>            
    
    <!-- On renomme le champ -->
    <xsl:template match="product_quantity_erp">
        <product_quantity>
            <xsl:apply-templates select="@* | node()"/>
        </product_quantity>
    </xsl:template>
    
    <!-- et on supprime l'ancien champ, le 1er trouvé -->
    <xsl:template match="prestashop/order/associations/order_rows/order_row/product_quantity" />

</xsl:stylesheet>


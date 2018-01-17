<?xml version="1.0" encoding="UTF-8"?>

<!--
    Description:
        Si payment = amazon prime
        Alors id_carrier = XX

        XX doit être un identifiant réel de Prestashop d'un transporteur (même inactif).
        E-connecteur récupère son nom à partir de son ID.
        Le nom ainsi récupéré doit être mappé dans le fichier config.ini sur le code EBP souhaité pour le transporteur (DPD dans ce cas).
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:variable name= "paymentcible">amazon prime</xsl:variable>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>

       <!-- <xsl:if test="contains($paymentcible, payment)">
            <id_carrier><![CDATA[XX]]></id_carrier>
        </xsl:if>-->
           
    </xsl:template>

</xsl:stylesheet>


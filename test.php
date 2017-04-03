<?php
//Ce script permet de tester une transformation XSLT en php

//Paramètres
//$xsl_file = 'exemples/produits.xsl';
//$xml_file = 'exemples/produits.xml';

//$xsl_file = 'exemples/produits_1.xsl';
//$xml_file = 'exemples/produits_1.xml';

//$xsl_file = 'exemples/commandes_1.xsl';
//$xml_file = 'exemples/commandes_1.xml';

$xsl_file = 'exemples/commandes_2.xsl';
$xml_file = 'exemples/commandes_2.xml';

//Test de transformation
error_reporting(-1);
ini_set('display_errors', 'on');
$xmldoc = new DOMDocument();
$xmldoc->load($xml_file);
$XSL = new DOMDocument();
$XSL->load($xsl_file);
$xsl = new XSLTProcessor();
$xsl->importStyleSheet($XSL);
$xml = $xsl->transformToXML($xmldoc);
echo $xml;
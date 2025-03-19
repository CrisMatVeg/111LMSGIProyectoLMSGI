<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">
<xsl:template name="meta">
    <xsl:param name="titulo"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="author" content="Cristian Mateos Vega"/>
    <meta name="keywords" content="html, css, xslt, xml"/>
    <meta name="robots" content="html"/>
 
    <title><xsl:value-of select="$titulo"/></title>
</xsl:template>
</xsl:stylesheet>
 
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:include href="../../lib/libhtml.xsl"/>
    <xsl:template match="/prediccion">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <link rel="stylesheet" type="text/css" href="../input/prediccion.css"/>
                <xsl:call-template name="meta">
                    <xsl:with-param name="titulo" select="'07 XSLT Cristian Mateos'"/>
                </xsl:call-template>
            </head>
            <body>
                <table>
                    <caption>El Tiempo. <xsl:value-of select="concat(upper-case(municipio/nombre),':')"/></caption>
                    <tr>
                        <th>Día</th>
                        <th>Prob. precip.</th>
                        <th>Estado del cielo</th>
                        <th>Temperatura (°C)</th>
                        <th>Viento (km/h)</th>
                    </tr>
                    <xsl:apply-templates select="dia"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="dia">
        <tr>
            <td><xsl:value-of select="substring(@fecha, 9, 2)"/></td>
            <td><xsl:value-of select="prob_precipitacion"/>%</td>
            <td>
                <img src="../target/images/{estado_cielo}.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
            </td>
            <td>
                <span style="color:#F00;"><xsl:value-of select="temperatura/minima"/></span> / 
                <xsl:value-of select="temperatura/maxima"/>
            </td>
            <td>
                <img src="../target/images/{viento/direccion}.gif" alt="{viento/direccion}" title="{viento/direccion}"/> 
                <xsl:value-of select="viento/velocidad"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>

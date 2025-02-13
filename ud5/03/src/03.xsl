<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/listatickets">
    <html>
        <head>
        <title>3- XSLT Tickets Cristian Mateos</title>
        <meta charset="UTF-8"/>
        </head>
        <body>
        <header>
            <h1>Información de Tickets</h1>
            <h2>Listado de Tickets</h2>
        </header>
        <main>
            <xsl:apply-templates select="ticket"/>
        </main>
        <footer>
            <div>NUMERO DE TICKES: <xsl:value-of select="count(//ticket)"/></div>
            <div>SUMAR DE TICKES: <xsl:value-of select="count(//ticket)"/></div>
        </footer>
        </body>
    </html>
    </xsl:template>
    <xsl:template match="ticket">
        <h3>Ticket: <xsl:value-of select="numero"/></h3>
        <table>
        <caption>Fecha del Ticket  <xsl:value-of select="fecha"/></caption>
        <thead>
            <tr>
                <th>Productos</th>
                <th>Precio</th>
            </tr>
        </thead>
        <tbody>
        <xsl:apply-templates select="producto"/>
        </tbody>
        <tfoot>
        <tr>
            <th>
                Total    
            </th>
            <th>
                <xsl:value-of select="total"/>    
            </th>
        </tr>
        </tfoot>
        </table>
    </xsl:template>
    <xsl:template match="producto">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
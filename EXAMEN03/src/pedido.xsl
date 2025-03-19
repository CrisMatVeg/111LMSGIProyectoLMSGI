<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/pedido">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <link rel="stylesheet" type="text/css" href="../target/output/css/estilos.css"/>
                <title>Pedidos Cristian Mateos</title>
                <meta charset="UTF-8" />
            </head>
            <body>
                <header>
                    <h1>
                        Pedido ID: <xsl:value-of select="@idPedido" />
                    </h1>
                    <h3>
                        Fecha: <xsl:apply-templates select="@fecha"/>
                    </h3>
                    <h3>
                        Fabricante: <input list="tractor" id="tractor">
                            <datalist id="tractor">
                                <option>Total</option>
                                <xsl:for-each select="tractor">
                                    <option><xsl:value-of select="codigoFabricante"/></option>
                                </xsl:for-each>
                            </datalist>
                        </input>
                    </h3>
                </header>
                <xsl:for-each select="tractor">
                <table>
                    <caption><img src="../target/output/images/{document('../input/fabricantes.xml')/fabricantes/fabricante/@codigo}.png" alt="{@referencia}" title="{@referencia}"/> Fabricante: <xsl:value-of select="document('../input/fabricantes.xml')/fabricantes/fabricante[]/@codigo"/> <xsl:value-of select="document('../input/fabricantes.xml')/fabricantes/fabricante/@nombre"/></caption>
                    <tr>
                        <th></th>
                        <th>Referncia</th>
                        <th>Descripción</th>
                        <th>Fecha Entrega</th>
                        <th>Peso</th>
                        <th>Número de Serie</th>
                        <th>Km máximos</th>
                        <th>Cantidad</th>
                    </tr>
                    <xsl:for-each select="componente">
                        <tr>
                            <td>
                                <img id="imagencomponente" src="../target/output/images/{@referencia}.png" alt="{@referencia}" title="{@referencia}"/>
                            </td>
                            <td>
                                <xsl:value-of select="@referencia"/>                   
                            </td>
                            <td>
                                <xsl:value-of
                                    select="document('../input/componentes.xml')/componentes/componente/@nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="fechaEntrega/@mes"/>-<xsl:value-of select="fechaEntrega/@anio"/>      
                            </td>
                            <td>
                                <xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/>   
                            </td>
                            <td>
                                <xsl:value-of select="numeroSerie"/>   
                            </td>
                            <td>
                                <xsl:value-of select="kmMaximos"/>   
                            </td>
                            <td>
                                <xsl:value-of select="cantidad"/>   
                            </td>
                        </tr>
                    </xsl:for-each>
                    
                </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    
    <!-- Plantilla que dado una fecha la escribe en otro formato -->
    <xsl:template match="pedido/@fecha">
        <xsl:variable name="anio" select="substring(., 1, 4)"/>
        <xsl:variable name="mes" select="substring(., 6, 2)"/>
        <xsl:variable name="dia" select="substring(., 9, 2)"/>
        <xsl:value-of select="$dia"/> de
        <xsl:choose>
            <xsl:when test="$mes='01'">enero</xsl:when>
            <xsl:when test="$mes='02'">febrero</xsl:when>
            <xsl:when test="$mes='03'">marzo</xsl:when>
            <xsl:when test="$mes='04'">abril</xsl:when>
            <xsl:when test="$mes='05'">mayo</xsl:when>
            <xsl:when test="$mes='06'">junio</xsl:when>
            <xsl:when test="$mes='07'">julio</xsl:when>
            <xsl:when test="$mes='08'">agosto</xsl:when>
            <xsl:when test="$mes='09'">septiembre</xsl:when>
            <xsl:when test="$mes='10'">octubre</xsl:when>
            <xsl:when test="$mes='11'">noviembre</xsl:when>
            <xsl:when test="$mes='12'">diciembre</xsl:when>
        </xsl:choose> de <xsl:value-of select="$anio"/>
    </xsl:template>
    
    <!-- Plantilla que dado un pedido lo escribe en una tabla -->
    
</xsl:stylesheet>

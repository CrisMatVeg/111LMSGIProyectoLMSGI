<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/examen">
        <html>
            <head>
                <title>4- XSLT Tests Cristian Mateos</title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <header>
                    <h1><xsl:value-of select="datos/nombreCiclo"/></h1>
                    <h2>Curso: <xsl:value-of select="datos/curso"/> - Módulo: <xsl:value-of select="datos/nombreModulo"/></h2>
                    <p><strong>Fecha:</strong> <xsl:value-of select="datos/fecha/dia"/>-<xsl:value-of select="datos/fecha/mes"/>-<xsl:value-of select="datos/fecha/anyo"/></p> 
                </header>
                <main>
                    <h3>Preguntas:</h3>
                    <xsl:for-each select="preguntas/pregunta">
                        <div style="margin-bottom: 20px;">
                            <p><strong><xsl:value-of select="enunciado"/></strong></p>
                            
                            <ul>
                                <xsl:variable name="correcta" select="respuestas/respuesta[@correcta='correcta']"/>
                                <xsl:for-each select="respuestas/respuesta">
                                    <li>
                                        <xsl:value-of select="."/>
                                        <xsl:if test=". = $correcta"> (Respuesta correcta)</xsl:if>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </div>
                    </xsl:for-each>
                </main>
                <footer>
                    <p><xsl:value-of select="datos/fecha/anyo"/> - Examen de <xsl:value-of select="datos/nombreCiclo"/></p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
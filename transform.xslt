<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Videojuegos</title>
                <style>
                    body { font-family: Arial, sans-serif; margin: 0; padding: 0; background-color: #f4f4f4; color: #333; }
                    header { background: rgb(22, 94, 202); color: white; padding: 20px; text-align: center; }
                    main { padding: 20px; }
                    section { margin-bottom: 20px; background: white; border-radius: 5px; padding: 15px; }
                    h2 { color: rgb(22, 94, 202); }
                    footer { text-align: center; padding: 10px; background: rgb(22, 94, 202); color: white; }
                </style>
            </head>
            <body>
                <header>
                    <h1>Mis Videojuegos Favoritos</h1>
                </header>
                <main>
                    <xsl:for-each select="videojuegos/juego">
                        <section>
                            <h2><xsl:value-of select="titulo"/></h2>
                            <p><strong>Género:</strong> <xsl:value-of select="genero"/></p>
                            <p><strong>Año:</strong> <xsl:value-of select="anio"/></p>
                        </section>
                    </xsl:for-each>
                </main>
                <footer>
                    <p>&copy; 2024 Edgar Sánchez. Todos los derechos reservados.</p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
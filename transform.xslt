<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/videojuegos">
        <html>
            <head>
                <title>Lista de Videojuegos</title>
                <style>
                     body { font-family: Arial, sans-serif; margin: 0; padding: 0; background-color: #f4f4f4; color: black; }
                     header { background: rgb(22, 94, 202); color: white; padding: 20px; text-align: center; }
                    main { padding: 20px; }
                    .tabla {
                    display: grid;
                    grid-template-columns: repeat(3, 1fr); /* 3 columnas */
                    gap: 20px; /* Espacio entre las tarjetas */
                    background: white;
                     border-radius: 5px;
                    padding: 15px;
                    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
                    }
                    .juego {
                    background: #a5d2ff;
                    padding: 20px; /* Espacio interno */
                    border-radius: 5px;
                    margin-bottom: 10px; /* Espacio entre las filas */
                    }
                    .juego h2 {
                    color: black;
                    }
                    footer { text-align: center; padding: 10px; background: rgb(22, 94, 202); color: white; }
                </style>
            </head>
            <body>
                <header>
                    <h1>Lista Videojuegos Favoritos</h1>
                </header>
                <main>
                    <div class="tabla">
                        <xsl:for-each select="juego">
                            <div class="juego">
                                <h2><xsl:value-of select="titulo"/></h2>
                                <p><strong>Género:</strong> <xsl:value-of select="genero"/></p>
                                <p><strong>Año:</strong> <xsl:value-of select="anio"/></p>
                            </div>
                        </xsl:for-each>
                    </div>
                </main>
                <footer>
                    <p>2024 Sánchez Pareja Company. Todos los derechos reservados.</p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
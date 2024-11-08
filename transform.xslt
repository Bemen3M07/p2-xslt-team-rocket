<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/videojuegos">
        <html>
            <head>
            <!-- Titulo de la página -->
            <title>Lista de Videojuegos</title>
                <style>
                    <!-- Estilo para el cuerpo de la página -->
                    body {
                        font-family: Arial, sans-serif; <!-- Fuente de la página -->
                        margin: 0; <!-- Sin margen externo en el cuerpo -->
                        padding: 0; <!-- Sin relleno externo en el cuerpo -->
                        background-color: #f4f4f4; <!-- Fondo gris claro -->
                        color: black; <!-- Color del texto en negro -->
                    }

                    <!-- Estilo para el encabezado de la página -->
                    header {
                        background: rgb(22, 94, 202); <!-- Fondo azul oscuro -->
                        color: white; <!-- Color de texto en blanco -->
                        padding: 20px; <!-- Espacio alrededor del contenido -->
                        text-align: center; <!-- Centra el texto -->
                    }

                    <!-- Estilo para la sección principal de la página -->
                    main {
                        padding: 20px; <!-- Espacio interno alrededor del contenido -->
                    }

                    <!-- Estilo para la cuadrícula de tarjetas de videojuegos -->
                    .tabla {
                        display: grid; <!-- Usa una cuadrícula de CSS para organizar elementos -->
                        grid-template-columns: repeat(3, 1fr); <!-- Tres columnas iguales -->
                        gap: 20px; <!-- Espacio entre las tarjetas -->
                        background: white; <!-- Fondo blanco de la cuadrícula -->
                        border-radius: 5px; <!-- Bordes ligeramente redondeados -->
                        padding: 15px; <!-- Espacio interno en la cuadrícula -->
                        box-shadow: 0 2px 5px rgba(0,0,0,0.1); <!-- Sombra suave para darle profundidad -->
                    }

                    <!-- Estilo para cada tarjeta individual de videojuego -->
                    .juego {
                        background: #a5d2ff; <!-- Fondo azul claro para cada tarjeta -->
                        padding: 20px; <!-- Espacio interno en la tarjeta -->
                        border-radius: 5px; <!-- Bordes redondeados -->
                        margin-bottom: 10px; <!-- Espacio debajo de cada tarjeta -->
                    }

                    <!-- Estilo para los títulos dentro de cada tarjeta -->
                    .juego h2 {
                        color: black; <!-- Color de texto en negro para el título -->
                    }

                    <!-- Estilo para el pie de página --> 
                    footer {
                        text-align: center; <!-- Centra el texto del pie de página -->
                        padding: 10px; <!-- Espacio interno alrededor del pie de página -->
                        background: rgb(22, 94, 202); <!-- Fondo azul oscuro -->
                        color: white; <!-- Color de texto en blanco -->
                    }
                </style>
            </head>
            <body>
                <header>
                <!-- Encabezado principal de la página -->
                    <h1>Lista Videojuegos Favoritos</h1>
                </header> 
                    <main>
                    <!-- Contenedor de la cuadrícula de videojuegos -->
                    <div class="tabla">
                        <!-- Bucle XSLT que recorre cada elemento <juego> en el XML -->
                        <xsl:for-each select="juego">
                            <!-- Tarjeta individual que representa cada videojuego -->
                            <div class="juego">
                                <!-- Título del videojuego, obtenido del elemento <titulo> del XML -->
                                <h2><xsl:value-of select="titulo"/></h2>
                                <!-- Género del videojuego, obtenido del elemento <genero> del XML -->
                                <p><strong>Género:</strong> <xsl:value-of select="genero"/></p>
                                <!-- Año de lanzamiento del videojuego, obtenido del elemento <anio> del XML -->
                                <p><strong>Año:</strong> <xsl:value-of select="anio"/></p>
                            </div>
                        </xsl:for-each> 
                    </div>
                </main>
                <footer>
                    <!-- Footer de la pagina -->
                    <p>2024 Sánchez Pareja Company. Todos los derechos reservados.</p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
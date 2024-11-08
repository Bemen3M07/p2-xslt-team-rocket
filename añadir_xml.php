<?php
header("Content-Type: text/html; charset=UTF-8"); // Encabezado al inicio

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titulo = $_POST["titulo"];
    $genero = $_POST["genero"];
    $anio = $_POST["anio"];

    // Cargar el archivo XML o crear uno nuevo si no existe
    $xml = new DOMDocument();
    $file_path = "videojuegos.xml";
    
    if (file_exists($file_path)) {
        $xml->load($file_path);
    } else {
        // Crear un nuevo archivo XML con la estructura base
        $root = $xml->createElement("videojuegos");
        $xml->appendChild($root);
    }

    // Crear el elemento <juego>
    $juego = $xml->createElement("juego");

    // Añadir el título, género y año al elemento <juego>
    $juego->appendChild($xml->createElement("titulo", htmlspecialchars($titulo)));
    $juego->appendChild($xml->createElement("genero", htmlspecialchars($genero)));
    $juego->appendChild($xml->createElement("anio", htmlspecialchars($anio)));

    // Agregar el nuevo juego al nodo raíz <videojuegos>
    $xml->documentElement->appendChild($juego);

    // Guardar el XML con el nuevo elemento añadido
    $xml->save($file_path);

    // Mensaje de confirmación
    echo "<p>Videojuego añadido correctamente.</p>";
    echo "<p><a href='formulario.html'>Volver al formulario</a></p>";
}
?>

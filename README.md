# Projecte Web de Gestió de Videojocs

## Autors
Edgar Sánchez Martín i Unai Pareja Oncala
Alumnes de 2on de DAM

## Descripció
Aquesta web tracta sobre la gestió d'un llistat de videojocs. Permet afegir nous títols a un fitxer XML mitjançant un formulari web. També es fa servir XSLT per transformar i presentar les dades de l'XML de forma més estructurada i visual en la pàgina web. L'objectiu és oferir una interfície senzilla per gestionar i visualitzar la informació de diferents videojocs.

## Eines Utilitzades (Servidor)
Per a la gestió del servidor i la manipulació de dades, s'utilitzen les següents eines i tecnologies:
- PHP: Per processar el formulari i afegir dades al fitxer XML.
- XML i XSLT: XML s'utilitza per emmagatzemar la informació dels videojocs, i XSLT per transformar l'XML en HTML de manera dinàmica.
- CSS: Per estilitzar el contingut de la web i millorar-ne la presentació.

## Estructura de Carpetes
L'estructura principal de carpetes del projecte és la següent:
projecte-videojocs/ │ ├── index.html # Pàgina principal (llistat de videojocs) ├── formulario.html # Pàgina amb el formulari per afegir videojocs ├── afegir_xml.php # Script PHP per processar i afegir dades al fitxer XML ├── videojocs.xml # Fitxer XML amb el llistat de videojocs ├── transformacio.xsl # Fitxer XSLT per transformar l'XML en HTML ├── css/ │ └── estilo.css # Fitxer CSS per al disseny de la web └── README.md # Documentació del projecte

## Requeriments per a l'Execució del Projecte
Per executar aquest projecte localment, es necessiten els següents requeriments:
- Servidor web (per exemple, Apache)
- PHP instal·lat al servidor
- Accés al sistema de fitxers per a la lectura/escriptura del fitxer XML
- Suport per a XSLT per poder transformar el fitxer XML

#### Requeriments per a l'Execució del Projecte
Per executar aquest projecte localment, es necessiten els següents requeriments:
- Servidor web (per exemple, Apache)
- PHP instal·lat al servidor
- Accés al sistema de fitxers per a la lectura/escriptura del fitxer XML
- Suport per a XSLT per poder transformar el fitxer XML


## Funcionalitats del Projecte
Afegir Videojocs: Mitjançant un formulari, els usuaris poden afegir nous videojocs al llistat.
Transformació de Dades amb XSLT: L'XML es transforma dinàmicament en HTML, permetent una visualització més clara i atractiva dels videojocs.


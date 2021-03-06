<!-- Prologue (analogue à un fichier XML) -->
<?xsl version="1.0" encoding="UTF-8" ?>

<!-- Corps (élément racine : déclarer 2 attributs qui sont le n° de version et l'espace de noms) -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Décrit le document produit au fil des transformations (doc de type XML/HTML/texte, encodage, indenté ou non) -->
    <xsl:output method="html"
    encoding="UTF-8"
    doctype-public="-//W3C//DTD HTML 4.01//EN"
    doctype-system="http://www.w3.org/TR/html4/strict.dtd"
    indent="yes"/>

        <!-- Déclarer un template : TOUJOURS définir un attribut match OU un attribut name (jamais les 2 en même temps) -->
        <!-- L'attribut match sert à exprimer le XPath (chemin vers le doc XML auquel s'applique le template) -->
        <xsl:template match="/">

            <!-- Mise en forme page HTML -->
            <html>
                <head>
                    <title>M2i - Fil rouge</title>

                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

                    <!-- Importer Bootstrap CSS -->
                    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->

                </head>
                <body>

                    <!-- FOR-EACH : sélectionner tous les éléments XML correspondant au type spécifié dans l'attribut "select" -->
                    <xsl:for-each select="presentation/axe_L/axe_M/axe_S">

                        <!-- VALUE-OF : sélectionner un élément de mon fichier XML pour l'afficher dans un HTML -->
                        <p>
                            <xsl:value-of select="contenu" />
                        </p>

                    </xsl:for-each>
                    
                </body>
            </html>

        </xsl:template>

</xsl:stylesheet>

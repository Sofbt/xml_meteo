# TP XML / DTD / XSD / XSLT / SVG — Météo

Ce dépôt contient une solution complète pour le TP demandé autour d'un document XML de mesures de températures.

## Contenu

- `arbre_xml.md` : représentation graphique (arbre XML)
- `meteo.dtd` : DTD du document
- `meteo_dtd.xml` : document XML valide basé sur la DTD
- `meteo.xsd` : schéma XML (XSD)
- `meteo_xsd.xml` : document XML valide basé sur le schéma XML
- `meteo-to-html.xsl` : feuille XSLT vers HTML
- `meteo-to-svg.xsl` : feuille XSLT vers SVG animé (histogramme)
- `output/meteo.html` : exemple de sortie HTML
- `output/meteo.svg` : exemple de sortie SVG
- `validation.md` : commandes de validation / transformation

## Remarques

- Dans `meteo_xsd.xml`, les dates sont écrites au format `YYYY-MM-DD` pour être conformes au type `xs:date`.
- La feuille SVG construit un histogramme **animé** à partir de la **dernière mesure** du document.

## Commandes utiles

```bash
xmllint --noout --dtdvalid meteo.dtd meteo_dtd.xml
xmllint --noout --schema meteo.xsd meteo_xsd.xml

xsltproc meteo-to-html.xsl meteo_xsd.xml > output/meteo.html
xsltproc meteo-to-svg.xsl meteo_xsd.xml > output/meteo.svg
```
"# xml_meteo" 

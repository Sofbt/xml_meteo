# Validation et transformation

## Validation DTD

```bash
xmllint --noout --dtdvalid meteo.dtd meteo_dtd.xml
```

## Validation XSD

```bash
xmllint --noout --schema meteo.xsd meteo_xsd.xml
```

## Transformation XSLT -> HTML

```bash
xsltproc meteo-to-html.xsl meteo_xsd.xml > output/meteo.html
```

## Transformation XSLT -> SVG

```bash
xsltproc meteo-to-svg.xsl meteo_xsd.xml > output/meteo.svg
```

## Astuce

Ouvrir ensuite `output/meteo.html` dans un navigateur et `output/meteo.svg` dans un navigateur moderne pour visualiser l'histogramme animé.

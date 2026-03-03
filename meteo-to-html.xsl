<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html lang="fr">
      <head>
        <meta charset="UTF-8"/>
        <title>Bulletin météo</title>
        <style>
          body { font-family: Arial, sans-serif; margin: 24px; background: #f7f8fc; color: #222; }
          h1 { color: #1d4ed8; }
          h2 { margin-top: 28px; color: #334155; }
          table { border-collapse: collapse; width: 100%; background: #fff; box-shadow: 0 2px 8px rgba(0,0,0,.08); }
          th, td { border: 1px solid #dbe2f0; padding: 10px; text-align: left; }
          th { background: #dbeafe; }
          tr:nth-child(even) td { background: #f8fafc; }
          .badge { display: inline-block; padding: 2px 8px; border-radius: 999px; background: #e0f2fe; }
        </style>
      </head>
      <body>
        <h1>Mesures des températures</h1>
        <xsl:for-each select="meteo/mesure">
          <h2>Date : <span class="badge"><xsl:value-of select="@date"/></span></h2>
          <table>
            <thead>
              <tr>
                <th>Ville</th>
                <th>Température (°C)</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="ville">
                <tr>
                  <td><xsl:value-of select="@nom"/></td>
                  <td><xsl:value-of select="@temperature"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>

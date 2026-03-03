<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:svg="http://www.w3.org/2000/svg">

  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <xsl:variable name="derniereMesure" select="meteo/mesure[last()]"/>

    <svg:svg width="760" height="420" viewBox="0 0 760 420">
      <svg:rect x="0" y="0" width="760" height="420" fill="#f8fafc"/>
      <svg:text x="380" y="30" text-anchor="middle" font-size="22" font-family="Arial" fill="#0f172a">
        Histogramme des températures - <xsl:value-of select="$derniereMesure/@date"/>
      </svg:text>

      <!-- Axe horizontal -->
      <svg:line x1="50" y1="320" x2="710" y2="320" stroke="#1f2937" stroke-width="2"/>
      <!-- Axe vertical -->
      <svg:line x1="50" y1="50" x2="50" y2="320" stroke="#1f2937" stroke-width="2"/>

      <!-- Graduations -->
      <svg:line x1="45" y1="320" x2="55" y2="320" stroke="#1f2937" stroke-width="1"/>
      <svg:text x="38" y="325" text-anchor="end" font-size="11" font-family="Arial" fill="#334155">0</svg:text>

      <svg:line x1="45" y1="280" x2="55" y2="280" stroke="#1f2937" stroke-width="1"/>
      <svg:text x="38" y="285" text-anchor="end" font-size="11" font-family="Arial" fill="#334155">5</svg:text>

      <svg:line x1="45" y1="240" x2="55" y2="240" stroke="#1f2937" stroke-width="1"/>
      <svg:text x="38" y="245" text-anchor="end" font-size="11" font-family="Arial" fill="#334155">10</svg:text>

      <svg:line x1="45" y1="200" x2="55" y2="200" stroke="#1f2937" stroke-width="1"/>
      <svg:text x="38" y="205" text-anchor="end" font-size="11" font-family="Arial" fill="#334155">15</svg:text>

      <svg:line x1="45" y1="160" x2="55" y2="160" stroke="#1f2937" stroke-width="1"/>
      <svg:text x="38" y="165" text-anchor="end" font-size="11" font-family="Arial" fill="#334155">20</svg:text>

      <svg:line x1="45" y1="120" x2="55" y2="120" stroke="#1f2937" stroke-width="1"/>
      <svg:text x="38" y="125" text-anchor="end" font-size="11" font-family="Arial" fill="#334155">25</svg:text>

      <xsl:for-each select="$derniereMesure/ville">
        <xsl:variable name="temp" select="number(@temperature)"/>
        <xsl:variable name="x" select="70 + (position() - 1) * 80"/>
        <xsl:variable name="hauteur" select="$temp * 8"/>
        <xsl:variable name="yFinal" select="320 - $hauteur"/>

        <svg:rect x="{$x}" y="320" width="42" height="0" rx="4" fill="#2563eb">
          <svg:animate attributeName="y" from="320" to="{$yFinal}" dur="1.2s" fill="freeze"/>
          <svg:animate attributeName="height" from="0" to="{$hauteur}" dur="1.2s" fill="freeze"/>
        </svg:rect>

        <svg:text x="{$x + 21}" y="{$yFinal - 8}" text-anchor="middle" font-size="12" font-family="Arial" fill="#0f172a">
          <xsl:value-of select="@temperature"/>°C
        </svg:text>

        <svg:text x="{$x + 21}" y="340" text-anchor="middle" font-size="11" font-family="Arial" fill="#334155">
          <xsl:value-of select="@nom"/>
        </svg:text>
      </xsl:for-each>
    </svg:svg>
  </xsl:template>

</xsl:stylesheet>

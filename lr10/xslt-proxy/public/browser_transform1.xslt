<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Ответ</title>
      </head>
      <body>
        <table>
          <tr>
          <th>№</th>
          <th>Числа Мерсенна</th>
        </tr>
          <xsl:for-each select="objects/object">
            <tbody>
              <tr>
                <th>
                  <xsl:value-of select="ind"></xsl:value-of>
                </th>
                <th>
                  <xsl:value-of select="elem"></xsl:value-of>
                </th>
              </tr>
            </tbody>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

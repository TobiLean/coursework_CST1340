<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Program Information</title>
        <script src="https://cdn.tailwindcss.com"></script>
      </head>
      <body>
        <table>
          <tr class="">
            <th class="text-green-500 text-left text-xl ">S.No</th>
            <th class="text-yellow-500 text-left text-xl">Name</th>
            <th class="text-red-500 text-left text-xl">Price</th>
            <th class="text-purple-500 text-left text-xl">Artist</th>
            <th class="text-cyan-500 text-left text-xl">Country</th>
            <th class="text-stone-500 text-left text-xl">Company</th>
          </tr>
          <xsl:for-each select="Books/Book">
            <tr class="">
              <td class="text-green-500 "><xsl:value-of select="S.No"/></td>
              <td class="text-yellow-500"><xsl:value-of select="Name"/></td>
              <td class="text-red-500"><xsl:value-of select="Price"/></td>
              <td class="text-purple-500"><xsl:value-of select="Artist"/></td>
              <td class="text-cyan-500"><xsl:value-of select="Country"/></td>
              <td class="text-stone-500"><xsl:value-of select="Company"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

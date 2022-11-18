<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h2>User Information</h2>
  <table border="5">
    <tr bgcolor="#0073e6">
      <th style="text-align:left"> User ID</th>
      <th style="text-align:left"> User Name</th>
      <th style="text-align:left"> User Address</th>
      <th style="text-align:left"> User Interest</th>
      <th style="text-align:left"> User Phone</th>
      <th style="text-align:left"> Role</th>
    </tr>
    <xsl:for-each select="gaming/user">
      <xsl:sort select ="username"/>
      <xsl:if test="userno &gt; 1234567890">
      <tr>
        <xsl:choose>
          <xsl:when test="userid &gt; 0">
            <td bgcolor ="ff00ff">
            <xsl:value-of select="userid"/></td>
          </xsl:when>
        <xsl:otherwise>
          <td><xsl:value-of select="userid"/></td>
        </xsl:otherwise>
        </xsl:choose>
        
        <td><xsl:value-of select="username"/></td>
        <td><xsl:value-of select="useraddress"/></td>
        <td><xsl:value-of select="userinterest"/></td>
        <td><xsl:value-of select="userno"/></td>
        <td><xsl:value-of select="role"/></td>
      </tr>
      </xsl:if>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>




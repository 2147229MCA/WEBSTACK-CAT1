<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>“Employee Management System”</h2>
  <table border="1.5">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">ID</th>
      <th style="text-align:left">NAME</th>
      <th style="text-align:left">AGE</th>
      <th style="text-align:left">SALARY</th>
      <th style="text-align:left">EMAIL</th>
      <th style="text-align:left">MobNum</th>
      <th style="text-align:left">Designation</th>
<th style="text-align:left">Promotion</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <tr>
      <td><xsl:value-of select="ID"/></td>
      <td><xsl:value-of select="NAME"/></td>
<td><xsl:value-of select="AGE"/></td>
<td><xsl:value-of select="SALARY"/></td>
<td><xsl:value-of select="EMAIL"/></td>
<td><xsl:value-of select="MobNum"/></td>
<td><xsl:value-of select="Designation"/></td>
<td><xsl:value-of select="Promotion"/></td>
    </tr>
    </xsl:for-each>
<xsl:for-each select="catalog/cd">
    <xsl:if test="AGE>=50" >
      <tr>
        <td><xsl:value-of select="ID"/></td>
        <td><xsl:value-of select="NAME"/></td>
        <td><xsl:value-of select="AGE"/></td>
        <td><xsl:value-of select="SALARY"/></td>
        <td><xsl:value-of select="EMAIL"/></td>
        <td><xsl:value-of select="MobNum"/></td>
        <td><xsl:value-of select="Designation"/></td>
        <td><xsl:value-of select="Promotion"/></td>
         
      </tr>
    </xsl:if>
    </xsl:for-each>

  </table>
</body>
</html>
</xsl:template>
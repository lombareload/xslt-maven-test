<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/test/asd/node()">
        <lol>
            <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
            <xsl:template match="text()|node()">

            </xsl:template>

            <xsl:copy>
                <xsl:apply-templates select="text()"></xsl:apply-templates>
            </xsl:copy>
            <!--<xsl:value-of select="test/asd"/>-->
            <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
        </lol>
    </xsl:template>
</xsl:stylesheet>
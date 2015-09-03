<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <test>
            <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
            <xsl:for-each select="test/asd/node()">
                <xsl:copy>
                    <xsl:apply-templates select="text()"></xsl:apply-templates>
                </xsl:copy>
                <!--<xsl:value-of select="node()"/>-->
            </xsl:for-each>
            <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
        </test>
    </xsl:template>
</xsl:stylesheet>
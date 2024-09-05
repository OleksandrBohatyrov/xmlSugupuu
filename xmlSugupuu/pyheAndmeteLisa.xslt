<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" encoding="utf-8"/>

	<xsl:template match="/">
		<h1>Tabel: Vana vanem, Vanem, Laps</h1>
		<table border="1">
			<tr>
				<th>Vana vanem</th>
				<th>Vanem</th>
				<th>Laps</th>
			</tr>

			<xsl:for-each select="sugupuu/inimene[lapsed/inimene]">
		
				<xsl:for-each select="lapsed/inimene">
		
					<xsl:for-each select="lapsed/inimene">
						<tr>
							<td>
								<xsl:value-of select="../../nimi"/>
							</td>
							<td>
								<xsl:value-of select="../nimi"/>
							</td>
							<td>
								<xsl:value-of select="nimi"/>
							</td>
						</tr>
					</xsl:for-each>

					<tr>
						<td>
							<xsl:value-of select="../../nimi"/>
						</td>
						<td>
							<xsl:value-of select="nimi"/>
						</td>
						<td>-</td>
					</tr>
				</xsl:for-each>
			</xsl:for-each>

		</table>
	</xsl:template>
</xsl:stylesheet>

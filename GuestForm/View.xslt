<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<html>
			<head>
				<title>Guestbook</title>
				<link href="css/style3.css" rel="stylesheet" type="text/css" />
			</head>
			<body>
				<table>
					<tr>
						<th>
							<b>Name</b>
						</th>
						<th>
							<b>Email</b>
						</th>
						<th>
							<b>Entry</b>
						</th>
					</tr>

					<xsl:for-each select="guestbook/guest">
						<tr>
							<td>
								<em>
									<xsl:value-of select="name"/>
								</em>
							</td>
							<td>
								<em>
									<xsl:value-of select="email"/>
								</em>
							</td>
							<td>
								<em>
									<xsl:value-of select="inscription"/>
								</em>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>

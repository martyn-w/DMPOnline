<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/dmp">
		<w:ftr
			xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas"
			xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
			xmlns:o="urn:schemas-microsoft-com:office:office"
			xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
			xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math"
			xmlns:v="urn:schemas-microsoft-com:vml"
			xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing"
			xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing"
			xmlns:w10="urn:schemas-microsoft-com:office:word"
			xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"
			xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml"
			xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup"
			xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk"
			xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml"
			xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape"
			mc:Ignorable="w14 wp14">
			<w:p w:rsidR="00603D2B" w:rsidRDefault="00603D2B" w:rsidP="00603D2B">
				<w:pPr>
					<w:pStyle w:val="Footer" />
					<w:jc w:val="center" />
				</w:pPr>
				<w:r>
					<w:t>
						<xsl:value-of select="format/footer" />
					</w:t>
				</w:r>
			</w:p>
		</w:ftr>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<!--
    Creates test case templates for E-ARK Information Package test cases.
    Author: Carl Wilson
    Version: 0.1
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:comment>Minimal IP with schemas</xsl:comment>
    <xsl:comment>In this example IDs are carring information to ease understanding - they look like paths to ease understanding, but are just IDs, similar to the naming of namespaces - these IDs can be replaced with information less UUID</xsl:comment>
    <xsl:comment>CSIPSTR15 states: We recommend including all schema documents for any structured metadata within package. These schema documents SHOULD be placed in a sub-folder called schemas within the Information Package root folder and/or the representation folder.</xsl:comment>
    <mets xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns="http://www.loc.gov/METS/"
      xmlns:csip="https://DILCIS.eu/XML/METS/CSIPExtensionMETS"
      xmlns:xlink="http://www.w3.org/1999/xlink"
      xsi:schemaLocation="http://www.w3.org/2001/XMLSchema-instance schemas/XMLSchema.xsd http://www.loc.gov/METS/ schemas/mets.xsd http://www.w3.org/1999/xlink schemas/xlink.xsd https://DILCIS.eu/XML/METS/CSIPExtensionMETS schemas/CSIPExtensionMETS.xsd"
      OBJID="Minimal_IP_with_schemas"
      TYPE="Database"
      csip:CONTENTINFORMATIONTYPE="SIARD2"
      PROFILE="http://www.eark-project.com/METS/IP.xml" >
      <xsl:comment>CSIP1 - mets/@OBJID</xsl:comment>
      <xsl:comment>CSIP2 - mets/@TYPE</xsl:comment>
      <xsl:comment>CSIP4 - mets/@csip:CONTENTTYPESPECIFICATION</xsl:comment>
      <xsl:comment>CSIP6 - mets/@PROFILE  The PROFILE attribute has to have as its value the URL of the used profile. When this profile is implemented as is the value is the URL for the official CS IP METS Profile.</xsl:comment>

      <metsHdr CREATEDATE="2018-10-12T14:20:00" csip:OAISPACKAGETYPE="SIP">
      <xsl:comment>CSIP7 mets/@metsHdr@CREATEDATE</xsl:comment>
      <xsl:comment>CSIP9 mets/@metsHdr/@csip:OAISPACKAGETYPE</xsl:comment>
        <agent ROLE="CREATOR" TYPE="OTHER" OTHERTYPE="SOFTWARE">
        <xsl:comment>CSIP10 mets/@metsHdr/agent</xsl:comment>
        <xsl:comment>CSIP11 mets/metsHdr/agent/@ROLE  The role of the mandatory agent is “CREATOR”.</xsl:comment>
        <xsl:comment>CSIP12 mets/metsHdr/agent/@TYPE The type of the mandatory agent is “OTHER”.</xsl:comment>
        <xsl:comment>CSIP13 metsmetsHdr/agent/@OTHERTYPE The other type of the mandatory agent is “SOFTWARE”.</xsl:comment>
        <name>E-ARK Corpus Team</name>
        <xsl:comment>CSIP14 mets/metsHdr/agent/name</xsl:comment>
        <note csip:NOTETYPE="SOFTWARE VERSION">1.0</note>
        <xsl:comment>CSIP15 mets/metsHdr/agent/note</xsl:comment>
        <xsl:comment>CSIP16 mets/metsHdr/agent/note/@csip:NOTETYPE The mandatory agent note is typed with the fixed value of “SOFTWARE VERSION”.</xsl:comment>
        </agent>
      </metsHdr>

        <fileSec ID="minimal_IP_with_schemas_filesec">
        <xsl:comment>CSIP59 there MUST be an ID</xsl:comment>

          <xsl:comment>schemas</xsl:comment>
          <fileGrp USE="Schemas" ID="minimal_with_schemas_fileGrp_schemas">
            <xsl:comment>CSIP60 there MUST be a fileGrp-element</xsl:comment>
            <xsl:comment>CSIP64 there MUST be an USE-attribute</xsl:comment>
            <xsl:comment>CSIP65 there MUST be an ID-attribute</xsl:comment>

            <xsl:comment>METS.xsd</xsl:comment>
            <file ID="minimal_with_schemas_fileGrp_schemas_mets_xsd" MIMETYPE="application/xml" SIZE="133920" CREATED="2018-05-01T14:20:00"
              CHECKSUM="4e9961dec3de72081e6142b28a437fb8" CHECKSUMTYPE="MD5" >
              <xsl:comment>CSIP66 there MUST be a file-element</xsl:comment>
              <xsl:comment>CSIP67 there MUST be an ID-attribute</xsl:comment>
              <xsl:comment>CSIP68 there MUST be an MIMETYPE-attribute</xsl:comment>
              <xsl:comment>CSIP69 there MUST be an SIZE-attribute</xsl:comment>
              <xsl:comment>CSIP70 there MUST be an CREATED-attribute</xsl:comment>
              <xsl:comment>CSIP71 there MUST be an CHECKSUM-attribute</xsl:comment>
              <xsl:comment>CSIP72 there MUST be an CHECKSUMTYPE-attribute</xsl:comment>
              <FLocat LOCTYPE="URL" xlink:type="simple" xlink:href="schemas/mets.xsd" />
              <xsl:comment>CSIP76 there MUST be a FLocat-element</xsl:comment>
              <xsl:comment>CSIP77 there MUST be a LOCTYPE-attribute</xsl:comment>
              <xsl:comment>CSIP78 there MUST be a xlink:type-attribute with the value "simple"</xsl:comment>
              <xsl:comment>CSIP79 there MUST be a xlink:href-attribute</xsl:comment>
            </file>

            <xsl:comment>XMLSchema.xsd</xsl:comment>
            <file ID="minimal_with_schemas_fileGrp_schemas_XMLSchema_xsd" MIMETYPE="application/xml"  CREATED="2015-12-14T14:20:00"
              CHECKSUM="94ed1a93ce3147d01bcb2fc1126255ed" CHECKSUMTYPE="MD5" SIZE="87677">
              <FLocat LOCTYPE="URL" xlink:href="schemas/XMLSchema.xsd" xlink:type="simple"/>
            </file>

            <xsl:comment>xlink.xsd</xsl:comment>
            <file ID="minimal_with_schemas_fileGrp_schemas_xlink_xsd" MIMETYPE="application/xml"  CREATED="2015-12-14T14:20:00"
              CHECKSUM="90c7527e6d4d3c3a6247ceb94b46bcf5" CHECKSUMTYPE="MD5" SIZE="8322">
              <FLocat LOCTYPE="URL" xlink:href="schemas/xlink.xsd" xlink:type="simple"/>
            </file>

            <xsl:comment>CSIPExtensionMETS.xsd</xsl:comment>
            <file ID="minimal_with_schemas_fileGrp_schemas_CSIPExtensionMETS.xsd" MIMETYPE="application/xml"  CREATED="2018-12-14T14:20:00"
              CHECKSUM="1a31b3aa3ae1e9b99e7a8b4618f3b485" CHECKSUMTYPE="MD5" SIZE="1673">
              <FLocat LOCTYPE="URL" xlink:href="schemas/CSIPExtensionMETS.xsd" xlink:type="simple"/>
            </file>

          </fileGrp>
      </fileSec>
      <structMap TYPE="PHYSICAL" LABEL="CSIP StructMap" ID="StructmapID">
        <xsl:comment>CSIP80 mets/structMap </xsl:comment>
        <xsl:comment>CSIP81 mets/structMap/@TYPE The type attribute of the structural map (structMap) is set to value “PHYSICAL” from the vocabualry</xsl:comment>
        <xsl:comment>CSIP82 mets/structMap/@LABEL The value must be “CSIP StructMap”</xsl:comment>
        <xsl:comment>CSIP83 mets/structMap/@ID</xsl:comment>
        <div ID="Structmap_Div_ID" LABEL="Minimal_IP_with_schemas">
          <xsl:comment>CSIP84 mets/structMap/div</xsl:comment>
          <xsl:comment>CSIP85 mets/structMap/div/@ID</xsl:comment>
          <xsl:comment>CSIP86 mets/structMap/div/@LABEL</xsl:comment>
          <div ID="Structmap_Div_ID_Metadata" LABEL="Metadata">
          </div>
          <div ID="Structmap_Div_ID_Documentation" LABEL="Documentation">
          </div>
          <div ID="Structmap_Div_ID_Schemas" LABEL="Schemas" CONTENTIDS="minimal_with_schemas_fileGrp_schemas">
          </div>
        </div>

      </structMap>
    </mets>
  </xsl:template>
</xsl:stylesheet>

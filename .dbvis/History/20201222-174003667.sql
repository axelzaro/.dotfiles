SELECT
    CAST((xpath('//configuration/triggerDefinition/text()', CAST (BD.XML_DEFINITION_DATA
    AS XML))) AS TEXT)
FROM
    build_definition BD
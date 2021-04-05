
SELECT
    CAST((xpath('//configuration/triggerDefinition[2]/pluginKey[1]/text()', CAST (BD.XML_DEFINITION_DATA
    AS XML))) AS TEXT)
FROM
    build_definition BD
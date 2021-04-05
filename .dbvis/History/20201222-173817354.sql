SELECT
    *
FROM
    build_definition BD
WHERE
    CAST((xpath('//configuration/triggerDefinition/pluginKey[2]/text()', CAST (BD.XML_DEFINITION_DATA
    AS XML))) AS TEXT) = '{com.atlassian.bamboo.triggers.atlassian-bamboo-triggers:schedule}'
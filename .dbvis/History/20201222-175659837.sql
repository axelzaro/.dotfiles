SELECT
    B.full_key,
    CAST((xpath('//configuration/triggers/triggerDefinition/pluginKey/text()', CAST
    (BD.XML_DEFINITION_DATA AS XML))) AS TEXT) test
FROM
    build_definition BD JOIN BUILD B on BD.build_id = B.build_id
WHERE
    CAST((xpath('//configuration/triggers/triggerDefinition/pluginKey/text()', CAST
    (BD.XML_DEFINITION_DATA AS XML))) AS TEXT) LIKE
    '%com.atlassian.bamboo.triggers.atlassian-bamboo-triggers:schedule%'

SELECT
     CAST((xpath('//configuration/branches/branchRemovalCleanUpEnabled/text()',CAST
    (BD.XML_DEFINITION_DATA AS XML))) AS TEXT) branchRemovalCleanUpEnabled,
    CAST((xpath('//configuration/triggers/triggerDefinition/pluginKey/text()', CAST (BD.XML_DEFINITION_DATA
    AS XML))) AS TEXT) test
FROM
    build_definition BD
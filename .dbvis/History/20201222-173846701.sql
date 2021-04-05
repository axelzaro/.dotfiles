SELECT
    *
FROM
    build_definition BD
WHERE
    CAST((xpath('//configuration/triggerDefinition/pluginKey[2]/text()', CAST (BD.XML_DEFINITION_DATA
    AS XML))) AS TEXT) = '{com.atlassian.bamboo.triggers.atlassian-bamboo-triggers:schedule}'




SELECT
    CAST((xpath('//configuration/triggerDefinition[2]/pluginKey[1]/text()', CAST (BD.XML_DEFINITION_DATA
    AS XML))) AS TEXT)
FROM
    build_definition BD
    
    


CAST((xpath('//configuration/branches/branchRemovalCleanUpEnabled/text()',CAST
        (BD.XML_DEFINITION_DATA AS XML))) AS TEXT) = '{false}'
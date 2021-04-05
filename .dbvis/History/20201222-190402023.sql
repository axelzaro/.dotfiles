SELECT
    B.full_key,
    XMLTYPE(BD.XML_DEFINITION_DATA).EXTRACT('//configuration/triggers/triggerDefinition/pluginKey/text()').getStringVal() TRIGERS
FROM
    build_definition BD
JOIN
    BUILD B
ON
    BD.build_id = B.build_id
WHERE
    XMLTYPE(BD.XML_DEFINITION_DATA).EXTRACT('//configuration/triggers/triggerDefinition/pluginKey/text()').getStringVal() LIKE
    '%com.atlassian.bamboo.triggers.atlassian-bamboo-triggers:schedule%'





CAST((xpath('//configuration/triggers/triggerDefinition/pluginKey/text()', CAST
    (BD.XML_DEFINITION_DATA AS XML))) AS TEXT) test
    CAST((xpath('//configuration/triggers/triggerDefinition/pluginKey/text()', CAST
    (BD.XML_DEFINITION_DATA AS XML))) AS TEXT) LIKE
    '%com.atlassian.bamboo.triggers.atlassian-bamboo-triggers:schedule%'
    
    
    
    
    XMLTYPE(BD.XML_DEFINITION_DATA).EXTRACT('//custom/buildExpiryConfig/enabled/text()').getStringVal() = 'true'
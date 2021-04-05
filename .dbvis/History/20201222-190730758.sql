SELECT
    B.full_key,
    XMLTYPE(BD.XML_DEFINITION_DATA).EXTRACT
    ('//configuration/triggers/triggerDefinition/pluginKey/text()').getStringVal() AS TRIGERS
FROM
    build_definition BD
JOIN
    BUILD B
ON
    BD.build_id = B.build_id
WHERE
        TRIGERS is not null and 
    XMLTYPE(BD.XML_DEFINITION_DATA).EXTRACT
    ('//configuration/triggers/triggerDefinition/pluginKey/text()').getStringVal() LIKE
    '%com.atlassian.bamboo.triggers.atlassian-bamboo-triggers:schedule%'
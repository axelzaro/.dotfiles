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
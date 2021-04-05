SELECT
    *
FROM
    public.build_definition
WHERE
    CAST((xpath('//configuration/triggerDefinition/pluginKey/text()',
    CAST (BD.XML_DEFINITION_DATA AS XML))) AS TEXT) = '{com.atlassian.bamboo.triggers.atlassian-bamboo-triggers:schedule}'
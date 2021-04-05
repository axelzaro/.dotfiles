SELECT
    B.BUILD_TYPE,
    B.FULL_KEY,
    B.TITLE,
    BD.XML_DEFINITION_DATA
FROM
    BUILD B
JOIN
    BUILD_DEFINITION BD
ON
    B.build_id = BD.build_id
WHERE
    BD.XML_DEFINITION_DATA LIKE '%com.atlassian.bamboo.plugins.scripttask:task.builder.command%'
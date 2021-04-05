SELECT
    SUBSTRING(XML_DEFINITION_DATA,CHARINDEX('<branchRemovalCleanUpEnabled>',XML_DEFINITION_DATA)+
    LEN('<branchRemovalCleanUpEnabled>'), CHARINDEX('</branchRemovalCleanUpEnabled>',
    XML_DEFINITION_DATA) - CHARINDEX('branchRemovalCleanUpEnabled',XML_DEFINITION_DATA) - LEN
    ('/branchRemovalCleanUpEnabled')) AS XML_VALUE
FROM
    BUILD B
JOIN
    BUILD_DEFINITION BD
ON
    B.BUILD_ID = BD.BUILD_ID
WHERE
    B.BUILD_TYPE = 'CHAIN';
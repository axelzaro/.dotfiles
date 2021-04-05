SELECT
        Convert(XML,XML_DEFINITION_DATA).value('(//configuration/branches/branchRemovalCleanUpEnabled/text())[0]','nvarchar(max)') as [branchRemovalCleanUpEnabled],
    B.BUILD_TYPE,
    B.BUILDKEY,
    BD.*
FROM
    BUILD B
JOIN
    BUILD_DEFINITION BD
ON
    B.BUILD_ID = BD.BUILD_ID
WHERE
    B.BUILD_TYPE = 'CHAIN'
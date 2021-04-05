SELECT
    B.BUILD_TYPE,
    B.BUILDKEY,
    SUBSTRING(XML_DEFINITION_DATA,CHARINDEX('<branchRemovalCleanUpEnabled>',XML_DEFINITION_DATA)+
    LEN('<branchRemovalCleanUpEnabled>'), CHARINDEX('</branchRemovalCleanUpEnabled>',
    XML_DEFINITION_DATA) - CHARINDEX('branchRemovalCleanUpEnabled',XML_DEFINITION_DATA) - LEN
    ('/branchRemovalCleanUpEnabled')) AS branchRemovalCleanUpEnabled,
    SUBSTRING(XML_DEFINITION_DATA,CHARINDEX('<removalCleanupPeriodInDays>',XML_DEFINITION_DATA)+
    LEN('<removalCleanupPeriodInDays>'), CHARINDEX('</removalCleanupPeriodInDays>',
    XML_DEFINITION_DATA) - CHARINDEX('removalCleanupPeriodInDays',XML_DEFINITION_DATA) - LEN
    ('/removalCleanupPeriodInDays')) AS removalCleanupPeriodInDays,
    SUBSTRING(XML_DEFINITION_DATA,CHARINDEX('<inactiveBranchCleanupEnabled>',XML_DEFINITION_DATA)+
    LEN('<inactiveBranchCleanupEnabled>'), CHARINDEX('</inactiveBranchCleanupEnabled>',
    XML_DEFINITION_DATA) - CHARINDEX('inactiveBranchCleanupEnabled',XML_DEFINITION_DATA) - LEN
    ('/inactiveBranchCleanupEnabled')) AS inactiveBranchCleanupEnabled,
    SUBSTRING(XML_DEFINITION_DATA,CHARINDEX('<inactivityInDays>',XML_DEFINITION_DATA)+
    LEN('<inactivityInDays>'), CHARINDEX('</inactivityInDays>',
    XML_DEFINITION_DATA) - CHARINDEX('inactivityInDays',XML_DEFINITION_DATA) - LEN
    ('/inactivityInDays')) AS inactivityInDays
FROM
    BUILD B
JOIN
    BUILD_DEFINITION BD
ON
    B.BUILD_ID = BD.BUILD_ID
WHERE
    B.BUILD_TYPE = 'CHAIN';
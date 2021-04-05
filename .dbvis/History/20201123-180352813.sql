SELECT
    Convert(XML,XML_DEFINITION_DATA).value('(//configuration/branches/branchRemovalCleanUpEnabled/text())[0]','nvarchar(max)')
FROM
    dbo.BUILD_DEFINITION
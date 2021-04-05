SELECT
    Convert(XML,XML_DEFINITION_DATA).value('(//configuration/branches/branchRemovalCleanUpEnabled/text())','nvarchar(max)') as text
FROM
    dbo.BUILD_DEFINITION

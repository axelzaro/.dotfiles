SELECT
    Convert(XML,XML_DEFINITION_DATA).value('(//configuration/branches[0]/branchRemovalCleanUpEnabled/text())[1]','nvarchar(max)') as text
FROM
    dbo.BUILD_DEFINITION

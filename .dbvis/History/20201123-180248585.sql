SELECT
    Convert(XML,XML_DEFINITION_DATA).value('(//repository/serverConfiguration/entry/string/text())[0]','nvarchar(max)')
FROM
    dbo.BUILD_DEFINITION
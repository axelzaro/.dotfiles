SELECT
    Convert(XML,XML_DEFINITION_DATA).value('(//repository/serverConfiguration/entry/string/text())','nvarchar(max)')
FROM
    dbo.BUILD_DEFINITION
SELECT
    Convert(XML,XML_DEFINITION_DATA).value("/")
FROM
    dbo.BUILD_DEFINITION
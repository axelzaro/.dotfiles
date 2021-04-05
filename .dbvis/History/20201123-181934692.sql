SELECT
    Convert(XML,XML_DEFINITION_DATA).value('(//configuration/branches[1]/text())[1]','nvarchar(max)') as text
FROM
    BUILD B
JOIN
    dbo.BUILD_DEFINITION BD
ON
    B.BUILD_ID = BD.BUILD_ID
WHERE
    B.BUILD_TYPE = 'CHAIN'    
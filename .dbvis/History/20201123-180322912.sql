SELECT 
Convert(XML,XML_DEFINITION_DATA).value('(//repository/serverConfiguration/entry/string/text())[24]','nvarchar(max)') as [Repo_Name],
Convert(XML,XML_DEFINITION_DATA).value('(//repository/serverConfiguration/entry/string/text())[4]','nvarchar(max)') as [Project_Key],
Convert(XML,XML_DEFINITION_DATA).value('(//repository/serverConfiguration/entry/string/text())[2]','nvarchar(max)') as [Public_Key],
Convert(XML,XML_DEFINITION_DATA).value('(//repository/serverConfiguration/entry/string/text())[22]','nvarchar(max)') as [Private_Key],
Convert(XML,XML_DEFINITION_DATA).value('(//repository/serverConfiguration/entry/string/text())[20]','nvarchar(max)') as [repository_stash_server]
 FROM 
 dbo.VCS_LOCATION;
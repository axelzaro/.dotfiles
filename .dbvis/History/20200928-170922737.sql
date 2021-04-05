select REPO.VCS_LOCATION_ID
     , REPO.NAME
     , XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/serverConfiguration/entry/string/text()').getStringVal() APPLICATION_ID
     , XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/configuration/repository/stash/key/isRepositoryStoredKey/text()').getStringVal() IS_STORED_IN_REPO
     , XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/configuration/repository/stash/repositoryUrl/text()').getStringVal() REPOSITORY_URL
     , XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/configuration/repository/stash/branch/text()').getStringVal() BRANCH
     , XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/configuration/repository/stash/key/public/text()').getStringVal() SSH_PUBLIC_KEY
     , XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/configuration/repository/stash/repositoryId/text()').getStringVal() REPOSITORY_ID
     , XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/configuration/repository/stash/projectKey/text()').getStringVal() PROJECT_KEY
     , XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/configuration/repository/stash/repositorySlug/text()').getStringVal() REPOSITORY_SLUG
  from VCS_LOCATION REPO

select REPO.VCS_LOCATION_ID
     , REPO.NAME
     , XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/repository/serverConfiguration/entry[1]/string[2]/text()').getStringVal() SSH_PUBLIC_KEY
     , XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/repository/serverConfiguration/entry[6]/string[2]/text()').getStringVal() REPOSITORY_SLUG
  from VCS_LOCATION REPO

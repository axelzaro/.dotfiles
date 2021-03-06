SELECT 
        XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/repository/serverConfiguration/stash/server/text()').getStringVal() APPLICATION_ID
    --REPO.VCS_LOCATION_ID
    -- , REPO.NAME
    -- , XMLTYPE(REPO.XML_DEFINITION_DATA).EXTRACT('/configuration/repository/stash/server/text()').getStringVal() APPLICATION_ID
FROM
    vcs_location REPO
WHERE
        REPO.PLUGIN_KEY = 'com.atlassian.bamboo.plugins.stash.atlassian-bamboo-plugin-stash:bbserver'
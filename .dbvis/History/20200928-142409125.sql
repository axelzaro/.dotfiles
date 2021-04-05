SELECT
    REPO.VCS_LOCATION_ID
     , REPO.NAME
FROM
    vcs_location REPO
WHERE
        REPO.PLUGIN_KEY = 'com.atlassian.bamboo.plugins.stash.atlassian-bamboo-plugin-stash:bbserver'
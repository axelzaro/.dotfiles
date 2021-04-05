SELECT
    *
FROM
    vcs_location vcs
JOIN
    plan_vcs_location pvl
ON
    vcs.vcs_location_id = pvl.vcs_location_id
Join build B on pvl.plan_id = b.build_id
WHERE
    vcs_location.plugin_key ='com.atlassian.bamboo.plugin.system.repository:svnv2'